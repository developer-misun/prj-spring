#!/usr/bin/env bash

set -euo pipefail

# 기본 Spring Boot 프로젝트 폴더 구조 생성 스크립트
# 실행 위치: 프로젝트 루트
# 이 스크립트는 파일이나 디렉터리를 삭제하지 않습니다.
# 기존 파일은 그대로 유지하며, 필요한 경우에만 새 디렉터리와 application.yml을 생성합니다.

mkdir -p src/main/java/com/example/yourapp
mkdir -p src/main/resources
mkdir -p src/test/java/com/example/yourapp
mkdir -p src/test/resources
mkdir -p .ai/docs/project
mkdir -p .ai/docs/naming
mkdir -p .ai/docs/api-design
mkdir -p .ai/docs/api-tests
mkdir -p .ai/scripts

# 기본 설정 파일 생성
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

echo "Basic folder structure created. No existing files were deleted or overwritten."
