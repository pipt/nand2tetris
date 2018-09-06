#!/bin/bash
for filename in *.tst; do
  printf "$filename "
  ~/nand2tetris/tools/HardwareSimulator.sh $filename
done
