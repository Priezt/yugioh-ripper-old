#!/bin/bash

grep -L -i '</html>' data/* | xargs -I '{}' rm '{}'

