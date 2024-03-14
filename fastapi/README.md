## Clip모델을 오픈하고 그림 URL을 제공하여 라벨값을 받는 코드입니다.

## 1. 라이브러리 버전
- 1. python : 3.11.5
- 2. pytorch : 2.2.0(cpu)
- 3. transformers : 4.32.1
- 4. Pillow : 10.0.1
- 5. boto3 : 1.26.76
- 6. uvicorn : 0.20.0
- 7. fastapi : 0.103.0
- 8. pydantic : 1.10.8
- 9. json : 2.0.9 
- 포스트용 requests : 2.31.0
 
## 2. 송신 json형태 예시
- {"path" : "my.jpg", "labels" : "cat, dog, tiger, pig"}

## 3. return string 형태 예시
- "cat"

## 4. 실행 방법
1. server_fastapi_clip.py 실행 (단, clip_model.py와 동일한 다이렉트 필요)
![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/7bf2a422-9043-4392-9339-95cb3b9b9d31)

2. ngrok으로 공유([링크](https://ngrok.com/))
- 1/2 로그인 후 다운받기<br/>
![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/50b01734-8cf8-43f8-a6a2-2ba4e6d71d2d)

- 3 압축풀기<br/>
![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/dab48979-801e-462a-abe7-d3c371a211e0)

- 4 ngrok.exe 실행<br/>
![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/82ecc943-c340-47db-900c-8268e2bd58be)<br/>

<br/>

![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/6a80aa45-c27f-4185-987d-c0dc79bcee95)<br/>

- 5 토큰 입력(1회), 6 실행 (배포 시 매번)
![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/af522dcb-fbdc-4e85-a766-1b96e8331448)<br/>

- 배포 완료
![image](https://github.com/hjhan1201/AIFFELthon/assets/89675001/bad2f285-0164-4a27-a277-3be77648d54f)

