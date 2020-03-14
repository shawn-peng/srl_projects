#!/bin/bash

cp train/train_facts_pre.txt train/train_facts.txt
cat train/train_pos.txt | sed -e "s/\([a-z_]*\)\((.*)\)/\1_f\2/" >> train/train_facts.txt
cp train/train_facts.txt test/test_facts.txt

