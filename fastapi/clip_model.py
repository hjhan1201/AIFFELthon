from transformers import CLIPProcessor, CLIPModel
from PIL import Image
import boto3
from botocore.config import Config

# 모델버전
# 1. python : 3.11.5
# 2. pytorch : 2.2.0(cpu)
# 3. transformers : 4.32.1
# 4. Pillow : 10.0.1
# 5. boto3 : 1.26.76

# CLIP 모델과 프로세서 로드
processor = CLIPProcessor.from_pretrained("openai/clip-vit-base-patch32")
clip_model = CLIPModel.from_pretrained("openai/clip-vit-base-patch32")

## s3 이미지 접근
def get_image(path):
    s3 = boto3.client(
        's3',
        config=Config(signature_version='s3v4'),
        aws_access_key_id=' ',
        aws_secret_access_key=' ',
    )

    # 파일 다운로드
    bucket = 'hjhan1201'
    key = 'hjhan1201/' + path

    obj = s3.get_object(Bucket=bucket, Key=key)

    image = Image.open(obj['Body'])
    return image

# 이미지 경로와 텍스트 레이블 목록을 받아서, 이미지에 가장 적합한 텍스트 레이블을 예측합니다.
async def predict_text_from_image(path, text_labels):
    
    # 이미지 로드 및 전처리
    image = get_image(path)
    inputs = processor(text=text_labels, images=image, return_tensors="pt", padding=True)

    # 모델을 통해 이미지와 텍스트의 유사도 계산
    outputs = clip_model(**inputs)
    logits_per_image = outputs.logits_per_image # 이미지에 대한 로짓

    # 수정 후
    probs = logits_per_image.softmax(dim=1).detach().cpu().numpy()

    # 가장 높은 확률을 가진 텍스트 레이블을 찾음
    max_index = probs.argmax()
    predicted_label = text_labels[max_index]

    return predicted_label, probs.max()
