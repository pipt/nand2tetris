load IsNegative.hdl,
output-file IsNegative.out,
compare-to IsNegative.cmp,
output-list in%B1.16.1 out;

set in %B0101010101010101,
eval,
output;

set in %B1010101010101010,
eval,
output;
