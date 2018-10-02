#!/bin/bash

files=(
"StackArithmetic/SimpleAdd/SimpleAdd"
"StackArithmetic/StackTest/StackTest"
"MemoryAccess/BasicTest/BasicTest"
"MemoryAccess/PointerTest/PointerTest"
"MemoryAccess/StaticTest/StaticTest"
"ProgramFlow/BasicLoop/BasicLoop"
"ProgramFlow/FibonacciSeries/FibonacciSeries"
"FunctionCalls/SimpleFunction/SimpleFunction"
)

for file in ${files[*]}
do
  echo $file
  ruby vm_translator.rb "$file.vm" > "$file.asm"
  ~/nand2tetris/tools/CPUEmulator.sh "$file.tst"
done
