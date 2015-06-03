#!/bin/bash
sed -i 's/\.//g' pgn.dat

sed -i 's/\,[0-9]/\.&/g' pgn.dat
sed -i 's/\.\,/\./g' pgn.dat

sed -i 's/\ [0-9]/\t&/g' pgn.dat
sed -i 's/\t\ /\t/g' pgn.dat

sed -E -i 's/\ \(/\t&/g' pgn.dat
sed -E -i 's/\t\ /\t/g' pgn.dat

sed -E -i 's/\)//g' pgn.dat

sed -E -i 's/\(/-/g' pgn.dat
