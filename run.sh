#!/bin/bash

ls data | ./get_untouched.pl | xargs -I '{}' cat data/'{}' | ./fetch_link.sh | ./get_page_filename.sh | sort | uniq | ./filter_existing.pl | tee ,pages | xargs -I '{}' ./fetch_one_page.sh '{}'

