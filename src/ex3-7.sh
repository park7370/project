#!/bin/bash

# 파일 이름 입력받음
echo " 파일이름입력:"
read file_name

# 파일이름 폴더 생성
mkdir "$file_name"

# 폴더로 이동
cd "$file_name" || exit

# 5개의 파일 생성
for i in {1..5}; do
  touch "file$i.txt"
done

# 파일 이름과 동일한 하위 폴더 생성
for i in {1..5}; do
  subfolder_name="$file_name-$i"
  mkdir "$subfolder_name"
  ln -s "../file$i.txt" "$subfolder_name/file$i.txt"
done

echo "Process completed. Files and folders created."
