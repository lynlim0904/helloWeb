# 가상머신에서 사용될 폴더

FROM openjdk:17-jdk-slim

# 작업 경로
WORKDIR /app

# 파일 복사(app.jar 라는 이름으로 변경)
COPY build/libs/helloWeb-0.0.1.jar app.jar

# 공개 포트
# EXPOSE 포트번호
EXPOSE 8080

# 실행
# ENTRYPOINT [ "실행명령어" ]
# java -jar app.jar -> 공백 대신 , 사용
ENTRYPOINT [ "java","-jar","app.jar" ]