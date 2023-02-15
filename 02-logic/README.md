# Lab 2: Filip Tuma

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](https://github.com/FilipTuma2001/digital-electronics-1/blob/main/02-logic/kmap_B_A-1.jpg)

   Less than:

   ![K-maps](https://github.com/FilipTuma2001/digital-electronics-1/blob/main/02-logic/kmap_B_A-2.jpg)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](https://github.com/FilipTuma2001/digital-electronics-1/blob/main/02-logic/comparator_min-1.jpg)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx96**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "1001"; 		-- Such as "0101" if ID = xxxx56
        s_a <= "0110";      -- Such as "0110" if ID = xxxx56
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination failed" severity error;
 

        -- WRITE OTHER TEST CASES HERE
        s_b <= "1100"; s_a <= "1010"; wait for 100 ns;
        s_b <= "0010"; s_a <= "0010"; wait for 100 ns;
        s_b <= "0001"; s_a <= "1000"; wait for 100 ns;
        s_b <= "1111"; s_a <= "1000"; wait for 100 ns;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/...)
