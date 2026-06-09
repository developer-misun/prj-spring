# 빌드 템플릿 및 수동 실행 가이드 (Gradle / Maven)

목적: 로컬에서 나중에 수동으로 실행할 수 있도록, 기본 `build.gradle`(Groovy) 및 `pom.xml` 템플릿 예시와 실행 명령을 정리합니다.

주의: 실제 프로젝트에서는 버전, 그룹ID, 패키지명 등을 프로젝트에 맞게 변경하세요.

---

## Gradle 템플릿 (build.gradle)

아래는 간단한 Spring Boot 3.x용 `build.gradle` 예시입니다.

```groovy
plugins {
    id 'org.springframework.boot' version '3.2.0'
    id 'io.spring.dependency-management' version '1.1.0'
    id 'java'
}

group = 'com.example'
version = '0.0.1-SNAPSHOT'
sourceCompatibility = '17'

repositories {
    mavenCentral()
}

dependencies {
    implementation 'org.springframework.boot:spring-boot-starter-web'
    implementation 'org.springframework.boot:spring-boot-starter-actuator'
    implementation 'org.springframework.boot:spring-boot-starter-data-jpa'
    runtimeOnly 'com.h2database:h2'

    testImplementation 'org.springframework.boot:spring-boot-starter-test'
}

tasks.named('test') {
    useJUnitPlatform()
}
```

권장: Gradle 래퍼(`gradlew`)를 사용하도록 프로젝트에 포함시키세요. 로컬에서 래퍼가 없다면 Gradle이 설치된 환경에서 아래를 실행해 생성할 수 있습니다:

```bash
gradle wrapper --gradle-version 8.6
```

실행 예시:

```bash
./gradlew clean build
./gradlew bootRun
./gradlew test
```

---

## Maven 템플릿 (pom.xml)

간단한 Spring Boot 3.x용 `pom.xml` 예시입니다.

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.example</groupId>
    <artifactId>demo</artifactId>
    <version>0.0.1-SNAPSHOT</version>
    <packaging>jar</packaging>

    <parent>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-parent</artifactId>
        <version>3.2.0</version>
        <relativePath/> <!-- lookup parent from repository -->
    </parent>

    <properties>
        <java.version>17</java.version>
    </properties>

    <dependencies>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-actuator</artifactId>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-data-jpa</artifactId>
        </dependency>
        <dependency>
            <groupId>com.h2database</groupId>
            <artifactId>h2</artifactId>
            <scope>runtime</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-test</artifactId>
            <scope>test</scope>
        </dependency>
    </dependencies>

    <build>
        <plugins>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
            </plugin>
        </plugins>
    </build>
</project>
```

권장: Maven 래퍼(`mvnw`)를 사용하세요. 래퍼가 없다면 아래로 생성할 수 있습니다:

```bash
mvn -N io.takari:maven:wrapper
```

실행 예시:

```bash
./mvnw clean package
./mvnw spring-boot:run
./mvnw test
```

---

## 로컬 개발 권장 워크플로우 (요약)

1. 템플릿을 프로젝트 루트에 복사하고 `groupId`/`artifactId`/`package` 등을 변경
2. 래퍼가 없다면 위 명령으로 생성
3. 로컬 DB가 필요하면 `docker-compose.yml`에 H2(또는 Postgres) 추가 후 실행

```bash
docker-compose up -d
```

4. 애플리케이션 실행:

```bash
# Gradle
./gradlew bootRun

# 또는 Maven
./mvnw spring-boot:run
```

5. 테스트 실행:

```bash
# Gradle
./gradlew test

# Maven
./mvnw test
```

---

## 참고 및 확장 포인트

- JPA 대신 R2DBC 사용, Spring Security 설정, Actuator 확장, 프로파일별 `application.yml` 구성 예시 등은 다음 단계에서 템플릿으로 추가 가능.
