load DMux8Way.hdl,
output-file DMux8Way.out,
compare-to DMux8Way.cmp,
output-list in sel%B1.3.1 a b c d e f g h;

set in 1,
set sel %B000,
eval,
output;

set in 1,
set sel %B001,
eval,
output;

set in 1,
set sel %B010,
eval,
output;

set in 1,
set sel %B011,
eval,
output;

set in 1,
set sel %B100,
eval,
output;

set in 1,
set sel %B101,
eval,
output;

set in 1,
set sel %B110,
eval,
output;

set in 1,
set sel %B111,
eval,
output;
