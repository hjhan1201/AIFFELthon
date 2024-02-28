## Clip모델을 오픈하고 그림 URL을 제공하여 라벨값을 받는 코드입니다.

## 1. 라이브러리 버전
- 1. python : 3.11.5
- 2. pytorch : 2.2.0(cpu)
- 3. transformers : 4.32.1
- 4. Pillow : 10.0.1
- 5. requests : 2.31.0
- 6. uvicorn : 0.20.0
- 7. fastapi : 0.103.0
- 8. json5 : 0.9.6
 
## 2. 송신 json형태 예시
- {"url" : "health.chosun.com/site/data/img_dir/2023/07/17/2023071701753_0.jpg", "labels" : "cat, dog, tiger, pig"}

## 3. return json형태 예시
- {"label" : "cat"}

## 4. 실행 방법
server_fastapi_clip.py 실행 (단, clip_model.py와 동일한 다이렉트 필요)

## 5. 확인 방법
현재까진
127.0.0.1:5000/docs를 통해 확인가능

![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/6d2a8ee6-6f73-44ef-8cf7-778be8782c51)

![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/ee0a1486-27ea-49c6-a33c-c88a8dd53d7c)
