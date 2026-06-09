# Spring Boot API 프로젝트 - 실행 계획 (태스크 기반)

**프로젝트 목표**
- 기본적인 Spring Boot 기반 API 호출 구성(골격)을 만든다.
- 문서와 폴더 구조 템플릿을 준비한다.
- 다른 프로젝트에서 재사용 가능한 가이드를 제공한다.

**기술 스택**
- Spring Boot 3.x, Java 17+
- Build: Gradle (권장) 또는 Maven
- Test: JUnit5 + Mockito
- CI: GitHub Actions

---

## 실행 규칙

### 중요: "하나씩 진행" 원칙

**이 프로젝트는 각 Task를 순차적으로 하나씩 진행합니다.**

1. **한 번에 1개 Task만 진행**
   - 여러 Task를 동시에 작업하지 않음
   - 현재 진행 중인 Task는 명확히 표시

2. **각 Task 완료 후**
   - 결과물을 `.ai/docs/project/` 또는 리포지토리에 커밋/저장
   - 이 파일의 체크리스트 업데이트
   - 필요시 `ai-agent-bootstrap.md`에 피드백/학습 내용 반영
   - 스크립트 실행 파일은 `.ai/scripts/`에 저장하고 실행한다

3. **Task 진행 중 발견사항**
   - "블로킹/이슈" 섹션에 기록
   - 에이전트와 함께 해결 후 진행

> 이 문서는 프로젝트 준비 및 실행 계획입니다. 실제 API 요구사항 정의와 테스트 문서는 별도 문서로 관리합니다:
> `.ai/docs/project/api-requirements-and-test-plan.md`

---

## 전체 Task 목록

| ID | Task | 상태 | 담당 | 우선순위 | 완료 내역 |
|---|------|------|------|---------|---------|
| [Pre-1](#pre-1-프로젝트-가이드-보강) | 프로젝트 가이드 보강 | [COMPLETE] | - | [HIGH] | ai-agent-bootstrap.md 완성 |
| [Pre-2](#pre-2-문서-폴더-구조-생성) | 문서 폴더 구조 생성 | [COMPLETE] | - | [HIGH] | .ai/docs/ 폴더 생성 완료 |
| [Pre-3](#pre-3-빌드-템플릿-가이드-작성) | 빌드 템플릿 가이드 작성 | [COMPLETE] | - | [HIGH] | build-templates.md 완성 |
| [Pre-4](#pre-4-요구사항-테스트-문서-분리) | 요구사항/테스트 문서 분리 | [COMPLETE] | - | [HIGH] | `api-requirements-and-test-plan.md` 추가 |
| [1](#task-1-스크립트-실행-기본-폴더-구조-생성) | 스크립트 실행: `.ai/scripts/create-basic-folder-structure.sh` | [COMPLETE] | - | [HIGH] | 기본 폴더 구조 및 `application.yml` 생성 완료 |
| [2](#task-2-buildgradle-파일-생성) | `build.gradle` 파일 생성 (루트) | [COMPLETE] | - | [HIGH] | Spring Boot 3.2.0 + Gradle 8.6 설정 완료 |
| [3](#task-3-기본-spring-boot-소스-생성) | 스크립트 실행: `.ai/scripts/create-springboot-base-source.sh` | [COMPLETE] | - | [HIGH] | 기본 Spring Boot 애플리케이션 소스 생성 완료 |
| [4](#task-4-기본-테스트-스켈레톤) | 기본 테스트 스켈레톤 (JUnit5 + Mockito) | [PENDING] | - | [MEDIUM] | - |
| [5](#task-5-github-actions-ci-템플릿) | GitHub Actions CI 템플릿 | [PENDING] | - | [MEDIUM] | - |
| [6](#task-6-dockerfile--docker-composeyml) | Dockerfile + docker-compose.yml | [PENDING] | - | [MEDIUM] | - |


## Pre-Task 상세 정보 (완료됨)

### Pre-1: 프로젝트 가이드 보강

- **상태**: [COMPLETE]
- **우선순위**: [HIGH]
- **파일 위치**: `.ai/docs/project/ai-agent-bootstrap.md`
- **작업 내용**:
  - Spring Boot 프로젝트용 부트스트랩 가이드 작성
  - 섹션 8: "하나씩 진행하기" 실행 규칙 추가
  - 섹션 9: Task 완료 후 피드백 반영 방법 추가
- **완료 내역**:
  - ai-agent-bootstrap.md v0.3 작성 완료

### Pre-2: 문서 폴더 구조 생성

- **상태**: [COMPLETE]
- **우선순위**: [HIGH]
- **폴더 구조**:
  - `.ai/docs/project/` : 프로젝트 계획 및 가이드
  - `.ai/docs/naming/` : 네이밍 규칙 (준비 중)
  - `.ai/docs/api-design/` : API 설계 템플릿 (준비 중)
  - `.ai/docs/api-tests/` : 테스트 계획 (준비 중)
- **완료 내역**:
  - 폴더 구조 생성 완료

### Pre-3: 빌드 템플릿 가이드 작성

- **상태**: [COMPLETE]
- **우선순위**: [HIGH]
- **파일 위치**: `.ai/docs/project/build-templates.md`
- **작업 내용**:
  - Gradle 템플릿 (build.gradle 예시)
  - Maven 템플릿 (pom.xml 예시)
  - 로컬 개발 워크플로우 가이드
- **완료 내역**:
  - build-templates.md 작성 완료

---

## Task 상세 정보

### Task 1: 스크립트 실행 - 기본 폴더 구조 생성

- **상태**: [COMPLETE]
- **우선순위**: [HIGH]
- **실행 스크립트**: `.ai/scripts/create-basic-folder-structure.sh`
- **설명**: 프로젝트 루트에서 스크립트를 실행하여 기본 소스/리소스 폴더 구조 및 기본 설정 파일을 생성합니다.
- **완료 기준**:
  - `.ai/scripts/create-basic-folder-structure.sh` 실행 완료
  - `src/main/java/com/example/yourapp` 생성
  - `src/main/resources` 생성
  - `src/test/java/com/example/yourapp` 생성
  - `src/test/resources` 생성
  - `src/main/resources/application.yml` 생성
- **실행 명령**:
  - `./.ai/scripts/create-basic-folder-structure.sh`
- **완료 내역**:
  - `src/main/resources/application.yml` 생성 완료
  - 기본 폴더 구조 생성 완료

### Task 2: build.gradle 파일 생성

- **상태**: [COMPLETE]
- **우선순위**: [HIGH]
- **파일 위치**: `build.gradle` (루트)
- **포함 항목**:
  - Spring Boot 3.2.0
  - Gradle 8.6 호환 설정
  - Spring Web, Spring Actuator, Spring Data JPA, H2, 테스트 의존성
- **완료 내역**:
  - `build.gradle` 파일 생성 완료
  - `Spring Boot 3.2.0 + Gradle 8.6` 설정 완료

- **Gradle Wrapper 권장**:
  - `gradlew`, `gradlew.bat`, `gradle/wrapper/gradle-wrapper.jar`, `gradle/wrapper/gradle-wrapper.properties` 파일을 커밋해 두는 것을 권장합니다.
  - 이 Wrapper를 통해 모든 개발자가 동일한 Gradle 버전으로 빌드할 수 있습니다.
  - **필수 항목**: 저장소에 Wrapper 파일이 없으면 `.ai/scripts/setup-gradle-wrapper.sh`를 실행하여 반드시 Wrapper를 생성해야 합니다.

- **JDK 버전 주의**:
  - `build.gradle`은 Java 17을 기준으로 설정되어 있습니다.
  - `./gradlew`는 시스템 `JAVA_HOME`에 설정된 JDK를 사용하므로, `gradlew` 실행 시 JDK 17을 사용해야 합니다.
  - JDK 버전이 맞지 않으면 아래와 같이 `JAVA_HOME`을 Java 17 경로로 설정하고 다시 시도하세요.

  ```bash
  export JAVA_HOME=/path/to/jdk17
  ./gradlew clean build
  ```

- **실행(빌드 & 실행) 명령 예시**:

  - 권장: Gradle Wrapper 사용

  ```bash
  ./gradlew clean build
  ./gradlew bootRun
  ```

  - Wrapper가 없는 경우(로컬에 Gradle이 설치된 경우)

  ```bash
  gradle clean build
  gradle bootRun
  ```

  - 빌드 산출물로 실행(프로덕션/검증용):

  ```bash
  java -jar build/libs/*.jar
  ```

  - Wrapper가 없으면 아래 helper 스크립트를 프로젝트 루트에서 실행하여 생성하십시오:

  ```bash
  cd /path/to/project/root
  ./.ai/scripts/setup-gradle-wrapper.sh
  ```

  - helper 스크립트는 로컬 Gradle이 설치되어 있어야 하며, wrapper가 이미 존재하면 아무 작업도 하지 않습니다.

  - **helper 스크립트 실행 실패 시 확인 항목**:
    1. 실행 위치가 프로젝트 루트인지 확인한다.
       - `build.gradle`, `settings.gradle`, 또는 `settings.gradle.kts`가 현재 디렉터리에 있어야 한다.
    2. 로컬 Gradle이 설치되어 있는지 확인한다.
       - `gradle --version` 명령이 정상 동작해야 한다.
    3. `build.gradle` 파일에 구문 또는 플러그인 설정 오류가 없는지 확인한다.
       - `gradle --version`이 작동하더라도 `gradle wrapper --gradle-version 8.6 --info`로 직접 실행해 오류 원인을 확인한다.
    4. 네트워크/다운로드 문제가 없는지 확인한다.
       - Gradle 배포 URL(`https://services.gradle.org/distributions/gradle-8.6-bin.zip` 또는 `-all.zip`)에 접근 가능한지 확인한다.
    5. 이전에 실패한 wrapper 생성 파일이 남아 있는 경우 삭제 후 재시도한다.
    6. 권한 문제 여부를 확인한다.
       - `chmod +x gradlew`를 실행하여 실행 권한을 부여해야 할 수 있다.


### Task 3: 기본 Spring Boot 소스 생성

- **상태**: [COMPLETE]
- **우선순위**: [HIGH]
- **실행 스크립트**: `.ai/scripts/create-springboot-base-source.sh`
- **설명**: 기본 Spring Boot 애플리케이션 엔트리포인트, 간단한 Health Controller, 기본 테스트 및 설정 파일을 생성합니다.
- **완료 기준**:
  - `settings.gradle` 생성 또는 존재 확인
  - `src/main/java/com/example/yourapp/YourappApplication.java` 생성
  - `src/main/java/com/example/yourapp/HelloController.java` 생성
  - `src/test/java/com/example/yourapp/YourappApplicationTests.java` 생성
  - `src/main/resources/application.yml` 생성
- **실행 명령**:
  - `./.ai/scripts/create-springboot-base-source.sh`
- **완료 내역**:
  - 기본 Spring Boot 소스 생성 완료
  - 기존 파일은 보존됨

### Task 4: 기본 테스트 스켈레톤

- **상태**: [PENDING]
- **우선순위**: [MEDIUM]
- **파일 위치**: `src/test/java/com/example/prj` 아래
- **포함 항목**:
  - JUnit5 기반 단위 테스트 템플릿
  - Mockito를 이용한 Mock 테스트 예시
  - 통합 테스트 스켈레톤 (H2 in-memory DB)
- **완료 내역**:
  - (진행 예정)

### Task 5: GitHub Actions CI 템플릿

- **상태**: [PENDING]
- **우선순위**: [MEDIUM]
- **파일 위치**: `.github/workflows/ci.yml`
- **포함 항목**:
  - 빌드 (gradlew clean build)
  - 테스트 실행
  - 코드 커버리지 체크 (선택)
- **완료 내역**:
  - (진행 예정)

### Task 5: Dockerfile + docker-compose.yml

- **상태**: [PENDING]
- **우선순위**: [MEDIUM]
- **파일 위치**: `Dockerfile`, `docker-compose.yml` (루트)
- **포함 항목**:
  - Dockerfile: OpenJDK 17 기반 멀티스테이지 빌드
  - docker-compose.yml: 로컬 개발용 (DB, 애플리케이션)
- **완료 내역**:
  - (진행 예정)

---

## 요약 일정 (원본)

- 1단계: 프로젝트 가이드 보강 및 요구사항 체크리스트 확정
- 2단계: 리포지토리 기본 폴더 구조 생성(문서 + 소스 템플릿)
- 3단계: 빌드 설정(Gradle/Maven) + 기본 의존성 템플릿 추가
- 4단계: 샘플 API 엔드포인트 골격 구현(컨트롤러, 서비스, DTO)
- 5단계: 기본 테스트 스켈레톤 추가(JUnit5 + Mockito)
- 6단계: CI 템플릿 및 Dockerfile 초안 추가

## 세부 작업 항목

1. 가이드 보강
- `.ai/docs/project/ai-agent-bootstrap.md`의 Spring Boot 섹션 검토 및 프로젝트별 규칙 추가

2. 문서 폴더 구조(권장)
- `.ai/docs/project/` : 프로젝트 개요, 워크플로우, 실행 체크리스트
- `.ai/docs/naming/` : URI/JSON/패키지/클래스 네이밍 규칙
- `.ai/docs/api-design/` : API 설계 템플릿(엔드포인트 목록, 요청/응답 샘플)
- `.ai/docs/api-tests/` : 통합·계약 테스트 계획서

3. 리포지토리/소스 기본 구조(권장)
- `src/main/java/com/example/<project>`
- `src/main/resources/application.yml` (+ profile 파일)
- `src/test/java/...`
- `build.gradle(.kts)` 또는 `pom.xml`과 래퍼(`gradlew`/`mvnw`)
- `Dockerfile`, `docker-compose.yml`(로컬 개발용)

4. 초기 코드 스켈레톤
- `controller/HealthController`(health check)
- `controller/SampleController`(예제 CRUD 엔드포인트)
- `service/SampleService`, `repository`(JPA 인터페이스)
- `dto` 패키지에 요청/응답 모델

5. 테스트 및 CI
- 단위 테스트 템플릿, 샘플 통합 테스트(H2 또는 Testcontainers)
- `.github/workflows/ci.yml` 기본 빌드+테스트 워크플로우

6. 우선순위(첫 작업 권장)
- 우선: 문서 템플릿(`.ai/docs/`)과 `build.gradle`(또는 `pom.xml`) 템플릿 생성
- 다음: Health + Sample 컨트롤러 골격과 기본 테스트
- 이후: CI, Dockerfile, 로컬 개발용 docker-compose

## 다음 단계(제가 도와드릴 수 있음)

- 즉시 생성: 위 `.ai/docs/` 폴더와 `.ai/docs/project/project-execution-plan.md`(본 파일) 추가 완료
- 원하시면: 자동으로 `build.gradle` 템플릿, 샘플 컨트롤러/서비스/테스트 파일을 생성해 드립니다。

---
작성일: 2026-06-08
