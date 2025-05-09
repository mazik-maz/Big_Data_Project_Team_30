#!/bin/bash

beeline -u jdbc:hive2://hadoop-03.uni.innopolis.ru:10001 -n team30 -p "hktzN5Hxb5EYwxCW" -f sql/stage3_results_to_hive.hql > "./output/stage3_results_to_hive_results.txt"
