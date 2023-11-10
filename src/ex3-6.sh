
# 사용자로부터 폴더 이름 입력 받기
echo "파일이름입력:"
read folder_name

# 폴더가 없으면 생성
if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
fi

# 폴더로 이동
cd "$folder_name" || exit

# 5개의 파일 생성
for i in {1..5}; do
  touch "file$i.txt"
done

# 폴더 압축
zip -r "$folder_name.zip" *

# 새로운 폴더 생성
cd ..
new_folder_name="extracted_$folder_name"
mkdir "$new_folder_name"

# 압축 해제
unzip "$folder_name.zip" -d "$new_folder_name"

echo "Process completed. Files created, zipped, and then extracted."
