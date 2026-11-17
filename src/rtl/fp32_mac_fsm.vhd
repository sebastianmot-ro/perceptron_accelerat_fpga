library ieee;
use ieee.std_logic_1164.all;

entity fp32_mac_fsm is
    port (
        clk : in  std_logic;
        rst : in  std_logic;
        start : in  std_logic;
        x0 : in  std_logic_vector(31 downto 0);
        x1 : in  std_logic_vector(31 downto 0);
        w0 : in  std_logic_vector(31 downto 0);
        w1 : in  std_logic_vector(31 downto 0);
        b  : in  std_logic_vector(31 downto 0);
        z_out : out std_logic_vector(31 downto 0);
        done  : out std_logic
    );
end entity fp32_mac_fsm;

architecture rtl of fp32_mac_fsm is

    -- declarare componente ip xilinx floating-point (configurate in mod non-blocking)
    component fp32_mult is
        port (
            aclk : in  std_logic;
            s_axis_a_tvalid : in  std_logic;
            s_axis_a_tdata  : in  std_logic_vector(31 downto 0);
            s_axis_b_tvalid   : in  std_logic;
            s_axis_b_tdata   : in  std_logic_vector(31 downto 0);
            m_axis_result_tvalid : out std_logic;
            m_axis_result_tdata  : out std_logic_vector(31 downto 0)
        );
    end component;

    component fp32_add is
        port (
            aclk : in  std_logic;
            s_axis_a_tvalid   : in  std_logic;
            s_axis_a_tdata  : in  std_logic_vector(31 downto 0);
            s_axis_b_tvalid   : in  std_logic;
            s_axis_b_tdata    : in  std_logic_vector(31 downto 0);
            m_axis_result_tvalid : out std_logic;
            m_axis_result_tdata  : out std_logic_vector(31 downto 0)
        );
    end component;

    -- definirea starilor automatului
    type state_type is (
        idle,
        mul0_start,
        mul0_wait,
        mul1_start,
        mul1_wait,
        add1_start,
        add1_wait,
        add2_start,
        add2_wait
    );
    signal state : state_type := idle;

    -- semnale pentru detectia frontului crescator pe start
    signal start_d  : std_logic := '0';
    signal start_pulse : std_logic;

    -- semnale de legatura catre multiplicatorul fp32
    signal mul_start : std_logic := '0';
    signal mul_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal mul_b  : std_logic_vector(31 downto 0) := (others => '0');
    signal mul_valid : std_logic;
    signal mul_dout  : std_logic_vector(31 downto 0);

    -- semnale de legatura catre sumatorul fp32
    signal add_start : std_logic := '0';
    signal add_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal add_b  : std_logic_vector(31 downto 0) := (others => '0');
    signal add_valid : std_logic;
    signal add_dout  : std_logic_vector(31 downto 0);

    -- registri interni pentru salvarea rezultatelor intermediare
    -- iesirea ip-urilor axi-stream este valida un singur tact, deci trebuie memorata
    signal p0  : std_logic_vector(31 downto 0) := (others => '0');
    signal p1  : std_logic_vector(31 downto 0) := (others => '0');
    signal s01   : std_logic_vector(31 downto 0) := (others => '0');
    signal z_reg  : std_logic_vector(31 downto 0) := (others => '0');
    signal done_reg : std_logic := '0';

begin

    -- detectie front crescator pe start ca sa nu repornim calculul daca ps tine bitul pe 1
    start_pulse <= start and (not start_d);

    -- conectare iesiri din registri
    z_out <= z_reg;
    done  <= done_reg;

    -- instantiere unitate inmultire fp32 partajata
    u_mult : fp32_mult
        port map (
            aclk   => clk,
            s_axis_a_tvalid  => mul_start,
            s_axis_a_tdata   => mul_a,
            s_axis_b_tvalid  => mul_start,
            s_axis_b_tdata   => mul_b,
            m_axis_result_tvalid => mul_valid,
            m_axis_result_tdata  => mul_dout
        );

    -- instantiere unitate adunare fp32 partajata
    u_add : fp32_add
        port map (
            aclk => clk,
            s_axis_a_tvalid   => add_start,
            s_axis_a_tdata   => add_a,
            s_axis_b_tvalid  => add_start,
            s_axis_b_tdata   => add_b,
            m_axis_result_tvalid => add_valid,
            m_axis_result_tdata  => add_dout
        );

    -- proces principal sincron pentru fsm si calea de date
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state     <= idle;
                start_d   <= '0';
                mul_start <= '0';
                add_start <= '0';
                p0   <= (others => '0');
                p1  <= (others => '0');
                s01  <= (others => '0');
                z_reg  <= (others => '0');
                done_reg  <= '0';
            else
                -- memorare stare anterioara a semnalului start pentru detectia de front
                start_d <= start;

                -- implicit tvalid ramane 0 ca sa generam impulsuri de exact un tact in starile start
                mul_start <= '0';
                add_start <= '0';

                case state is

                    -- asteptare comanda noua de calcul
                    when idle =>
                        if start_pulse = '1' then
                            done_reg <= '0';
                            state    <= mul0_start;
                        end if;

                    -- pasul 1: lansare inmultire x0 * w0 (dureaza un singur tact)
                    when mul0_start =>
                        mul_a  <= x0;
                        mul_b  <= w0;
                        mul_start <= '1';
                        state     <= mul0_wait;

                    -- asteptare finalizare x0 * w0 si salvare in p0
                    when mul0_wait =>
                        if mul_valid = '1' then
                            p0  <= mul_dout;
                            state <= mul1_start;
                        end if;

                    -- pasul 2: lansare inmultire x1 * w1
                    when mul1_start =>
                        mul_a <= x1;
                        mul_b  <= w1;
                        mul_start <= '1';
                        state     <= mul1_wait;

                    -- asteptare finalizare x1 * w1 si salvare in p1
                    when mul1_wait =>
                        if mul_valid = '1' then
                            p1 <= mul_dout;
                            state <= add1_start;
                        end if;

                    -- pasul 3: lansare adunare p0 + p1
                    when add1_start =>
                        add_a <= p0;
                        add_b  <= p1;
                        add_start <= '1';
                        state     <= add1_wait;

                    -- asteptare finalizare p0 + p1 si salvare in s01
                    when add1_wait =>
                        if add_valid = '1' then
                            s01  <= add_dout;
                            state <= add2_start;
                        end if;

                    -- pasul 4: lansare adunare s01 + b
                    when add2_start =>
                        add_a  <= s01;
                        add_b  <= b;
                        add_start <= '1';
                        state     <= add2_wait;

                    -- asteptare rezultat final z, activare done si intoarcere in idle
                    -- done_reg ramane 1 in idle pana la urmatorul start ca sa poata fi citit de procesor
                    when add2_wait =>
                        if add_valid = '1' then
                            z_reg   <= add_dout;
                            done_reg <= '1';
                            state    <= idle;
                        end if;

                end case;
            end if;
        end if;
    end process;

end architecture rtl;
