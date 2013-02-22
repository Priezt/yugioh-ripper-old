#!/bin/bash

cat $@ | getlink.pl | cut -f 1 | grep '^http://yugioh-wiki.net/index.php?%'
