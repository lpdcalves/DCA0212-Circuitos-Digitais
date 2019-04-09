entity hex7segdecode is 
port (x: in bit_VECTOR (3 downto 0);
		a,b,c,d,e,f,g : out bit);
end hex7segdecode;

architecture ckt of hex7segdecode is
begin

a <= (not x(3) and not x(2) and not x(1) and x(0))
or (not x(3) and x(2) and not x(1) and not x(0))
or (x(3) and x(2) and not x(1) and x(0)) 
or (x(3) and not x(2) and x(1) and x(0));

b <= (x(2) and x(1) and not x(0))
or (x(3) and x(1) and x(0))
or (not x(3) and x(2) and not x(1) and x(0)) 
or (x(3) and x(2) and not x(1) and not x(0));

c <= (not x(3) and not x(2) and x(1) and not x(0))
or (x(3) and x(2) and x(1))
or (x(3) and x(2) and not x(0));

d <= (not x(3) and not x(2) and not x(1) and x(0))
or (not x(3) and x(2) and not x(1) and not x(0))
or (x(3) and not x(2) and x(1) and not x(0)) 
or (x(2) and x(1) and x(0));

e <= (not x(3) and x(0))
or (not x(3) and x(2) and not x(1))
or (not x(2) and not x(1) and x(0));

f <= (not x(3) and not x(2) and x(0))
or (not x(3) and not x(2) and x(1))
or (not x(3) and x(1) and x(0)) 
or (x(3) and x(2) and not x(1) and x(0));

g <= (not x(3) and not x(2) and not x(1))
or (x(3) and x(2) and not x(1) and not x(0))
or (not x(3) and x(2) and x(1) and x(0));
end ckt;