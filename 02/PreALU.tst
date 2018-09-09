load PreALU.hdl,
output-file PreALU.out,
compare-to PreALU.cmp,
output-list in%B1.16.1 z n out%B1.16.1;

set in %B0000000000000000,
set z 0,
set n 0,
eval,
output;

set in %B1111111111111111,
set z 1,
set n 0,
eval,
output;

set in %B0101010101010101,
set z 0,
set n 1,
eval,
output;

set in %B0101010101010101,
set z 1,
set n 1,
eval,
output;
