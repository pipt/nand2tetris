load DMux4Way.hdl,
output-file DMux4Way.out,
compare-to DMux4Way.cmp,
output-list in sel%B1.2.1 a b c d;

set in 0,
set sel %B00,
eval,
output;

set in 0,
set sel %B01,
eval,
output;

set in 0,
set sel %B10,
eval,
output;

set in 0,
set sel %B11,
eval,
output;

set in 1,
set sel %B00,
eval,
output;

set in 1,
set sel %B01,
eval,
output;

set in 1,
set sel %B10,
eval,
output;

set in 1,
set sel %B11,
eval,
output;
