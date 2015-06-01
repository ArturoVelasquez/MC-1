echo "Escriba una palabra clave para buscar en los últimos repositorios de arXiv sobre astofísica de galaxias:"
read keyword

figlet arXiv
echo '======================================
Searching the arXiv for the new Stuff
http://arxiv.org/list/astro-ph.GA/new
======================================
keyword: '$keyword
echo '======================================
Articles found: ' 
curl -s http://arxiv.org/list/astro-ph.GA/new | grep '<span class="descriptor">Title:</span> ' | grep -c $keyword
curl -s http://arxiv.org/list/astro-ph.GA/new | grep '<span class="descriptor">Title:</span> ' | grep $keyword | sed 's/<span class="descriptor">Title:<\/span>\ //g'
echo '======================================'






