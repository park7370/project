#!/bin/bash

database="DB.txt"

# DB.txt 파일 생성
touch "$database"

# 목록 헤더 출력
echo "---------친구목록----------"

# 무한 루프
while true; do
  # 사용자로부터 이름과 전화번호 입력 받기
  echo "친구이름입력:"
  read name

  echo "연락처입력:"
  read phone_number

  # 입력 정보를 DB.txt에 추가
  echo "$name, $phone_number" >> "$database"

  echo "Record added to $database."

  # 계속 추가할 것인지 물어보기
  echo "다른친구를 추가할건가요? (yes/no)"
  read choice

  case "$choice" in
    [Nn]*)
      break  # 루프 종료
      ;;
    *)
      continue  # 다음 루프로 이동
      ;;
  esac
done

# 목록 출력
echo "Saved records in $database:"
cat "$database"

echo "Script completed."
