#!/bin/bash

# 사용자로부터 숫자를 입력받음
read -p "출력할 횟수를 입력하세요: " count

# 입력값이 숫자인지 확인
if [[ $count =~ ^[0-9]+$ ]]; then
    for ((i=1; i<=$count; i++)); do
        echo "Hello, World!"
    done
else
    echo "유효한 숫자를 입력하세요."
fi
