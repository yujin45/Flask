# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

# requirements 복사 후 실행하게 함
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# 현재 위치에 다 복사
COPY . .

# 컨테이너에서 5000번 포트 열어줌
EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
