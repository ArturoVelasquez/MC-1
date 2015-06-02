#!/bin/bash

count=$(curl -s http://arxiv.org/list/astro-ph.GA/new | grep '<span class="descriptor">Title:</span> ' | grep -ci $1)

results=($(curl -s http://arxiv.org/list/astro-ph.GA/new | grep '<span class="descriptor">Title:</span> ' | grep -i $1 | sed 's/<span class="descriptor">Title:<\/span>\ //g'))

figlet arXiv
echo '======================================
Searching the arXiv for the new Stuff
http://arxiv.org/list/astro-ph.GA/new
======================================
keyword: '$1
echo '======================================
Articles found: '$count
for ((i=0; i<$count; i++))
do
	echo '- '${results[$i]}
done
echo '======================================'
