# 1. 베이스 이미지 선택 (예: JDK)
FROM tomcat:9.0-jdk17

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 애플리케이션 파일 복사 (JAR 또는 WAR)
COPY target/myRecipe-1.0.0-BUILD-SNAPSHOT.war 

# 4. 애플리케이션 실행 명령
ENTRYPOINT ["java", "-war", "myRecipe-1.0.0-BUILD-SNAPSHOT.war"]