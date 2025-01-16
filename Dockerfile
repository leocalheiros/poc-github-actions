FROM eclipse-temurin:21-jdk AS builder
WORKDIR /app
ARG JAR_FILE=build/libs/main-1.0-SNAPSHOT.jar
COPY . .
RUN chmod +x gradlew

RUN ./gradlew build -x test && \
    cp build/libs/main-1.0-SNAPSHOT.jar ./main.jar

FROM eclipse-temurin:21
WORKDIR /app
COPY --from=builder /app/main.jar ./
ENTRYPOINT ["java", "-jar", "main.jar"]