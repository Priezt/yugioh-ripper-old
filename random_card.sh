#!/bin/bash

ls text | ./get_card.sh | sort -R | head -n 1| xargs -I '{}' cat text/'{}'

