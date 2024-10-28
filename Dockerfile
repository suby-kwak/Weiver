FROM openjdk:11-jdk

EXPOSE 8081

# JAR_FILE 변수 정의 -> 기본적으로 jar file이 2개이기 때문에 이름을 특정한다.
ARG WAR_FILE=weiver-main-server/target/weiver-0.0.1-SNAPSHOT.war

# JAR 파일 메인 디렉토리에 복사
COPY ${WAR_FILE} app.war

# 시스템 진입점 정의
ENTRYPOINT ["java","-jar","/app.war"]