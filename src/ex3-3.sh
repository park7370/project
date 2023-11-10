#!/bin/bash

# 사용자로부터 몸무게(kg)와 키(m)를 입력받음
read -p "몸무게(kg)를 입력하세요: " weight
read -p "키(m)를 입력하세요: " height

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

# BMI 결과 출력 및 비만 여부 판단
if (( $(echo "$bmi >= 18.5" | bc) && $(echo "$bmi < 23" | bc) )); then
    echo "BMI: $bmi (정상체중)"
elif (( $(echo "$bmi <18.5" | bc) )); then
    echo "BMI= $bmi (저체중임)"
else
    echo "BMI: $bmi (과체중임)"
fi
