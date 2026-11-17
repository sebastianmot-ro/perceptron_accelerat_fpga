library ieee;
use ieee.std_logic_1164.all;

entity activation_func is
    port (
        z_in : in  std_logic_vector(31 downto 0);
        act_out : out std_logic_vector(31 downto 0)
    );
end entity activation_func;

architecture rtl of activation_func is

    -- constante ieee 754 pe 32 de biti pentru iesirile functiei semn
    constant fp32_plus_one : std_logic_vector(31 downto 0) := x"3F800000"; -- +1.0
    constant fp32_minus_one : std_logic_vector(31 downto 0) := x"BF800000"; -- -1.0
    constant fp32_neg_zero : std_logic_vector(31 downto 0) := x"80000000"; -- -0.0

begin

    -- circuit pur combinational bazat pe bitul de semn (bitul 31 in format ieee 754)
    -- daca bitul 31 este 0 numarul este pozitiv, iar daca este 1 numarul este negativ
    -- tratam separat cazul -0.0 ca sa returneze tot +1.0, identic cu conditia z >= 0.0 din python
    act_out <= fp32_plus_one when (z_in(31) = '0' or z_in = fp32_neg_zero) else
               fp32_minus_one;

end architecture rtl;
