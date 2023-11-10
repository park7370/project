#!/bin/bash

# 사용자로부터 숫자와 연산자를 입력받음
read -p "첫 번째 숫자를 입력하세요: " num1
read -p "두 번째 숫자를 입력하세요: " num2
read -p "연산자를 입력하세요 (+ 또는 -): " operator

# 입력값이 숫자인지 확인
if [[ $num1 =~ ^[0-9]+$ ]] && [[ $num2 =~ ^[0-9]+$ ]]; then
    case $operator in
        "+")
            result=$((num1 + num2))
            echo "계산 결과: $result"
            ;;
        "-")
            result=$((num1 - num2))
            echo "계산 결과: $result"
            ;;
        *)
            echo "유효한 연산자를 입력하세요 (+ 또는 -)."
            ;;
    esac
else
    echo "유효한 숫자를 입력하세요."
fi
