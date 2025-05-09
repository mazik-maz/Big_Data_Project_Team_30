#!/bin/bash

beeline -u jdbc:hive2://hadoop-03.uni.innopolis.ru:10001 -n team30 -p "hktzN5Hxb5EYwxCW" --outputformat=tsv2 --showHeader=false -e "DESCRIBE team30_projectdb.nypd_complaints_parquet;" > output/schema_raw.tsv

hdfs dfs -mkdir -p /user/team30/project/hive/schema_raw/
hdfs dfs -put -f output/schema_raw.tsv /user/team30/project/hive/schema_raw/

beeline -u jdbc:hive2://hadoop-03.uni.innopolis.ru:10001 -n team30 -p "hktzN5Hxb5EYwxCW" -f sql/table_schema.hql > "./output/table_schema_results.txt"
