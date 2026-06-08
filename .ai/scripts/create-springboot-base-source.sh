#!/usr/bin/env bash

set -euo pipefail

# Spring Boot 기본 소스 생성 스크립트
# 실행 위치: 프로젝트 루트
# 이미 존재하는 파일은 덮어쓰지 않습니다.

if [ ! -f build.gradle ] && [ ! -f settings.gradle ] && [ ! -f settings.gradle.kts ]; then
  echo "Error: 현재 디렉터리는 Gradle 프로젝트 루트가 아닙니다. build.gradle 또는 settings.gradle 파일이 있는 위치에서 실행하세요."
  exit 1
fi

mkdir -p src/main/java/com/example/yourapp
mkdir -p src/main/resources
mkdir -p src/test/java/com/example/yourapp
mkdir -p src/test/resources

if [ ! -f settings.gradle ]; then
  cat > settings.gradle <<'EOF'
rootProject.name = 'prj-harness'
EOF
  echo "Created settings.gradle"
else
  echo "settings.gradle already exists"
fi

if [ ! -f src/main/java/com/example/yourapp/YourappApplication.java ]; then
  cat > src/main/java/com/example/yourapp/YourappApplication.java <<'EOF'
package com.example.yourapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class YourappApplication {

    public static void main(String[] args) {
        SpringApplication.run(YourappApplication.class, args);
    }
}
EOF
  echo "Created src/main/java/com/example/yourapp/YourappApplication.java"
else
  echo "src/main/java/com/example/yourapp/YourappApplication.java already exists"
fi

if [ ! -f src/main/java/com/example/yourapp/HelloController.java ]; then
  cat > src/main/java/com/example/yourapp/HelloController.java <<'EOF'
package com.example.yourapp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/health")
    public String health() {
        return "ok";
    }
}
EOF
  echo "Created src/main/java/com/example/yourapp/HelloController.java"
else
  echo "src/main/java/com/example/yourapp/HelloController.java already exists"
fi

if [ ! -f src/test/java/com/example/yourapp/YourappApplicationTests.java ]; then
  cat > src/test/java/com/example/yourapp/YourappApplicationTests.java <<'EOF'
package com.example.yourapp;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class YourappApplicationTests {

    @Test
    void contextLoads() {
    }
}
EOF
  echo "Created src/test/java/com/example/yourapp/YourappApplicationTests.java"
else
  echo "src/test/java/com/example/yourapp/YourappApplicationTests.java already exists"
fi

if [ ! -f src/main/resources/application.yml ]; then
  cat > src/main/resources/application.yml <<'EOF'
server:
  port: 8080

spring:
  datasource:
    url: jdbc:h2:mem:testdb
    driver-class-name: org.h2.Driver
    username: sa
    password:
  jpa:
    hibernate:
      ddl-auto: update
    show-sql: true
EOF
  echo "Created src/main/resources/application.yml"
else
  echo "src/main/resources/application.yml already exists"
fi

echo "Spring Boot base source generation complete. Existing files were preserved."
