import requests

# URL 및 JSON 데이터 정의
url = "https://e27f-114-202-17-6.ngrok-free.app/images"
data = {"url": "health.chosun.com/site/data/img_dir/2023/07/17/2023071701753_0.jpg", "labels": "cat, dog, rabbit, spoon, computer, tv, mouse"}

# headers 정의 (필요에 따라)
headers = {"Content-Type": "application/json"}

# POST 요청 수행
response = requests.post(url, json=data, headers=headers)

# 응답 확인
if response.status_code == 200:
    # 성공
    response_data = response.json()
    print(response_data)
