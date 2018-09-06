load Or8Way.hdl,
output-file Or8Way.out,
compare-to Or8Way.cmp,
output-list in%B1.8.1 out;

set in %B00000000,
eval,
output;

set in %B01000000,
eval,
output;

set in %B00000010,
eval,
output;

set in %B01011010,
eval,
output;

set in %B11111111,
eval,
output;
