load Mux16.hdl,
output-file Mux16.out,
compare-to Mux16.cmp,
output-list a%B1.16.1 b%B1.16.1 sel out%B1.16.1;

set a %B0101010101010101,
set b %B1010101010101010,
set sel 0,
eval,
output;

set a %B0101010101010101,
set b %B1010101010101010,
set sel 1,
eval,
output;
