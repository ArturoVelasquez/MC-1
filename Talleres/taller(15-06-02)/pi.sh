#!/bin/bash
curl http://pi.karmona.com/ | sed '1d' | sed '/<CENTER><B>Pi\ -\ 10 Million\ Digits<\/B><BR><BR><BR>/!d' | sed '/<B>/!d' | sed '/<\/B>/!d' | sed '/<\/center><\/BODY><\/HTML>/!d' | sed '/<BR>/!d' | sed -E "s/.\{20\}/&\n/g" > PIslices20.dat
