load IsZero.hdl,
output-file IsZero.out,
compare-to IsZero.cmp,
output-list in%B1.16.1 out;

set in %B0000000000000000,
eval,
output;

set in %B1010101010101010,
eval,
output;
