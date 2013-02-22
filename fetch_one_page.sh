#!/bin/bash

wget -O - -nv 'http://yugioh-wiki.net/index.php?'$@ | iconv -c -f euc-jp -t utf8 > data/$@

