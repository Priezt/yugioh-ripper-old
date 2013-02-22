#!/bin/bash

cat $@ | sed 's/%/\\\\x/g' | xargs -I '{}' perl -e 'print "''{}''\n"' | iconv -f euc-jp -t utf8

