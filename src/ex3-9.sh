#!/bin/bash

database="DB.txt"

# DB.txt  생성
touch "$database"

#  이름 입력 받기
echo "이름입력:"
read search_name

# DB.txt에서 해당 이름과 일치하는 정보 찾기
result=$(grep "^$search_name," "$database")

# 결과가 있으면 출력, 없으면 메시지 출력
if [ -n "$result" ]; then
  echo "검색 결과: $result"
else
  echo "해당 이름의 정보를 찾을 수 없습니다."
fi
