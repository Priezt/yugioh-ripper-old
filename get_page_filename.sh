#!/bin/bash

cat $@ | cut -d '?' -f 2 | cut -d '#' -f 1

