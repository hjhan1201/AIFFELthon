import uvicorn  # pip install uvicorn
from fastapi import Request, FastAPI  # pip install fastapi
from fastapi.middleware.cors import CORSMiddleware  # 추가된 부분 cors 문제 해결을 위한
import json

# 모델버전
# 1. python : 3.11.5
# 2. uvicorn : 0.20.0
# 3. fastapi : 0.103.0
# 4. json5 : 0.9.6

# 수신 json형태
# {"url" : "https://를 뺀 url", "labels" : "cat, dog, tiger, pig"}
# url + label로 받는 형태

# 예측 모듈 가져오기
import clip_model

# FastAPI application
app = FastAPI()

# cors 이슈
origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins = origins,
    allow_credentials = True,
    allow_methods = ["*"],
    allow_headers = ["*"],
)

@app.get("/images={url}")
async def read_root(jsn):
    url = json.loads(jsn)['url']
    labels = json.loads(jsn)['labels'].split(",")
    image_url = "https://" + url
    print(image_url)
    result = await clip_model.predict_text_from_image(image_url, labels)
    return {'label' : result}

# Run the server
if __name__ == "__main__":
    uvicorn.run("server_fastapi_clip:app",
                reload = True,
                host= "127.0.0.1",
                port=5000,
                log_level="info"
                )
