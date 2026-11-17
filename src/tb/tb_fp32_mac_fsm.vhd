library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity tb_fp32_mac_fsm is
end entity tb_fp32_mac_fsm;

architecture sim of tb_fp32_mac_fsm is

    -- declarare unitate de calcul mac cu fsm
    component fp32_mac_fsm is
        port (
            clk : in std_logic;
            rst : in std_logic;
            start : in std_logic;
            x0 : in std_logic_vector(31 downto 0);
            x1 : in std_logic_vector(31 downto 0);
            w0 : in std_logic_vector(31 downto 0);
            w1 : in std_logic_vector(31 downto 0);
            b : in std_logic_vector(31 downto 0);
            z_out : out std_logic_vector(31 downto 0);
            done : out std_logic
        );
    end component;

    -- declarare modul combinational pentru functia de activare
    component activation_func is
        port (
            z_in : in std_logic_vector(31 downto 0);
            act_out : out std_logic_vector(31 downto 0)
        );
    end component;

    -- semnale de ceas, reset si control
    constant clk_period : time := 10 ns;
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal start : std_logic := '0';

    -- semnale de intrare si iesire pentru modulele testate
    signal x0 : std_logic_vector(31 downto 0) := (others => '0');
    signal x1 : std_logic_vector(31 downto 0) := (others => '0');
    signal w0 : std_logic_vector(31 downto 0) := (others => '0');
    signal w1 : std_logic_vector(31 downto 0) := (others => '0');
    signal b : std_logic_vector(31 downto 0) := (others => '0');
    signal z_out : std_logic_vector(31 downto 0);
    signal act_out : std_logic_vector(31 downto 0);
    signal done : std_logic;

begin

    -- generare semnal de ceas de 100 mhz
    clk <= not clk after clk_period / 2;

    -- conectare unitate mac
    dut_mac : fp32_mac_fsm
        port map (
            clk => clk,
            rst => rst,
            start => start,
            x0 => x0,
            x1 => x1,
            w0 => w0,
            w1 => w1,
            b => b,
            z_out => z_out,
            done => done
        );

    -- legare directa a iesirii z catre modulul de activare
    dut_act : activation_func
        port map (
            z_in => z_out,
            act_out => act_out
        );

    -- proces principal de citire vectori din fisier si verificare rezultate
    stim_proc : process
        file vec_file : text open read_mode is "test_vectors_inputs.mem";
        variable line_buf : line;
        variable v_x0 : std_logic_vector(31 downto 0);
        variable v_x1 : std_logic_vector(31 downto 0);
        variable v_w0 : std_logic_vector(31 downto 0);
        variable v_w1 : std_logic_vector(31 downto 0);
        variable v_b : std_logic_vector(31 downto 0);
        variable v_z_exp : std_logic_vector(31 downto 0);
        variable v_act_exp : std_logic_vector(31 downto 0);
        variable test_idx : integer := 0;
        variable err_count : integer := 0;
    begin
        -- mentinere reset activ timp de 5 cicli de ceas
        rst <= '1';
        start <= '0';
        wait for 5 * clk_period;
        wait until rising_edge(clk);
        rst <= '0';
        wait for 2 * clk_period;

        -- parcurgere linie cu linie a fisierului de test
        while not endfile(vec_file) loop
            readline(vec_file, line_buf);

            -- ignorare linii goale de la finalul fisierului
            if line_buf'length = 0 then
                next;
            end if;

            test_idx := test_idx + 1;

            -- extragere valori hexadecimale din linia curenta
            hread(line_buf, v_x0);
            hread(line_buf, v_x1);
            hread(line_buf, v_w0);
            hread(line_buf, v_w1);
            hread(line_buf, v_b);
            hread(line_buf, v_z_exp);
            hread(line_buf, v_act_exp);

            -- aplicare intrari sincron cu ceasul si generare impuls start de un tact
            wait until rising_edge(clk);
            x0 <= v_x0;
            x1 <= v_x1;
            w0 <= v_w0;
            w1 <= v_w1;
            b <= v_b;
            start <= '1';

            wait until rising_edge(clk);
            start <= '0';

            -- asteptam un tact suplimentar ca done din testul anterior sa coboare in 0
            -- altfel conditia done = 1 ar trece imediat inainte ca fsm-ul sa porneasca
            wait until rising_edge(clk);

            -- asteptare finalizare calcul in pl
            wait until rising_edge(clk) and done = '1';
            wait for 1 ns;

            -- verificare rezultat suma ponderata z
            if z_out /= v_z_exp then
                report "eroare la testul " & integer'image(test_idx) & ": z_out incorect"
                    severity error;
                err_count := err_count + 1;
            end if;

            -- verificare rezultat functie de activare
            if act_out /= v_act_exp then
                report "eroare la testul " & integer'image(test_idx) & ": act_out incorect"
                    severity error;
                err_count := err_count + 1;
            end if;

            wait for 2 * clk_period;
        end loop;

        file_close(vec_file);

        -- raportare finala in consola simulatorului vivado
        if err_count = 0 then
            report "simulare reusita: toate cele " & integer'image(test_idx) & " teste au trecut fara erori."
                severity note;
        else
            report "simulare esuata: numar total erori = " & integer'image(err_count)
                severity failure;
        end if;

        wait;
    end process stim_proc;

end architecture sim;
