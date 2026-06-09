# 프로젝트 상세 정보

> 이 문서는 이 API 프로젝트의 도메인, 범위, 이해관계자, 기술 스택, 기본 폴더 구조를 정리합니다.  
> 여러 프로젝트에서 공통 형식으로 재사용할 수 있는 템플릿입니다.

---

## 1. 도메인 정의

### 1.1 도메인 이름

- 예:
  - `하네스 설계(Harness Design)`
  - `재고 관리(Inventory Management)`

### 1.2 도메인 설명

- 예:
  - "OOO 데이터를 관리하고, 관련 시스템과 연동하기 위한 도메인"

### 1.3 현재 단계에서의 도메인 상태

- 예:
  - 레거시 시스템 분석이 진행 중이라 상세 모델이 확정되지 않았다.
  - 초기에는 테스트용/샘플 리소스를 통해 설계·문서·코드 패턴을 먼저 검증한다.
  - 이후 실제 도메인 리소스로 점진적으로 대체한다.

---

## 2. 범위(Scope)

### 2.1 포함 범위 (현재)

- 예:
  - Spring Boot 기반의 테스트용 API 구현
  - API 설계/문서/테스트/코드 스캐폴딩/테스트 자동화 프로세스 정립
  - 향후 실제 도메인을 수용할 수 있는 기반 구조 설계

### 2.2 제외 범위 (현재)

- 예:
  - 실제 업무 데이터의 정교한 모델링
  - 레거시 API와의 완전한 기능/스펙 대응
  - 보안/인증/인가, 모니터링 등의 운영 환경 수준 구현

---

## 3. 이해관계자

### 3.1 비즈니스 오너

- 예:
  - 도메인 담당 팀장
  - 제품 기획자 / 서비스 오너

### 3.2 주요 사용자

- 예:
  - 도메인 엔지니어 / 기획자
  - 연동 시스템(PLM, ERP, MES 등) 담당 개발자
  - 내부/외부 API 소비자

### 3.3 개발/운영 팀

- 예:
  - 백엔드 개발 팀
  - QA 팀
  - 운영/플랫폼 팀

---

## 4. 기술 스택 및 런타임 환경

### 4.1 백엔드

- 프레임워크:
  - 예: Spring Boot 3.x
- 언어:
  - 예: Java 17
- 빌드 도구:
  - 예: Maven / Gradle (택1)

### 4.2 인프라

- 개발/테스트 환경:
  - 예: 로컬 환경 (개발자 PC + IDE/VS Code + 터미널)
  - 내장 웹 서버 (Spring Boot 내장 Tomcat 등)[web:70][web:74]
- 운영 환경(계획):
  - 예: Docker, Kubernetes, Cloud 환경 등

### 4.3 데이터베이스

- 개발 단계:
  - 예: H2, 로컬 PostgreSQL 등
- 운영 단계:
  - 예: PostgreSQL / MySQL / Oracle 등

### 4.4 연동 시스템 (있다면)

- 예:
  - PLM, ERP, 사내 다른 API 등

---

## 5. 기본 프로젝트 폴더 구조 (공통 기본형)

> 이 구조는 Spring Boot 기반의 일반적인 REST API 프로젝트를 위한 **기본형**입니다.[web:70][web:72][web:73][web:76]  
> 필요 시 각 프로젝트에 맞게 확장하거나 일부 폴더를 제거할 수 있습니다.

```text
<project-root>/
 ├─ docs/                          # 모든 문서는 Markdown(.md)로 관리
 │   ├─ project/                   # 프로젝트 개요/상세/워크플로우/AI 가이드
 │   │   ├─ project-overview.md
 │   │   ├─ project-details.md
 │   │   ├─ project-workflow.md
 │   │   └─ ai-agent-guide.md      # (선택) AI 협업 가이드
 │   ├─ naming/                    # 네이밍/컨벤션
 │   │   └─ naming-rules-<domain>.md
 │   ├─ api-design/                # API 설계 (개요 + 리소스별 + 에러 규격)
 │   │   ├─ api-design-<domain>-overview-v1.md
 │   │   ├─ api-design-<domain>-resource-<resource1>-v1.md
 │   │   └─ api-design-<domain>-errors-v1.md
 │   ├─ api-tests/                 # API 테스트 시나리오/케이스
 │   │   └─ api-tests-<domain>-v1.md
 │   └─ architecture/              # 아키텍처 다이어그램/폴더 구조/설계 원칙
 │       └─ project-structure.md
 ├─ src/
 │   ├─ main/
 │   │   ├─ java/
 │   │   │   └─ <base-package>/    # 예: com/example/<domain>/
 │   │   │       ├─ api/           # Controller, DTO (입출력)
 │   │   │       ├─ application/   # 유스케이스, 서비스 오케스트레이션 (선택)
 │   │   │       ├─ domain/        # 엔티티, 도메인 서비스, 리포지토리 인터페이스
 │   │   │       ├─ infrastructure/# JPA 구현체, 외부 시스템 어댑터
 │   │   │       └─ config/        # 스프링 설정
 │   │   └─ resources/
 │   │       ├─ application.yml    # 환경 설정 (dev/test/prod 분리 가능)
 │   │       └─ ...
 │   └─ test/
 │       ├─ java/
 │       │   └─ <base-package>/    # main 과 동일한 패키지 구조
 │       │       ├─ api/           # Controller/API 테스트
 │       │       ├─ domain/        # 도메인 단위 테스트
 │       │       └─ ...
 │       └─ resources/
 │           └─ ...                # 테스트용 설정/데이터
 ├─ build.gradle 또는 pom.xml      # 빌드 스크립트
 └─ README.md                      # 최상위 요약
```

### 5.1 기본형에서 제공하는 공통 가이드

- 모든 문서는 `docs/` 아래에 `.md` 형식으로 관리한다.
- `docs/project` 에는 항상 최소 3개 파일을 둔다:
  - `project-overview.md`
  - `project-details.md`
  - `project-workflow.md`
- 코드 구조는 Spring Boot 권장 방식에 따라,  
  `src/main/java` 와 `src/test/java`를 기본으로 사용한다.
- 패키지 구조는 `api / application / domain / infrastructure / config` 를 기본으로 제공하고,  
  필요에 따라 **레이어를 합치거나 세분화**할 수 있다.

---

## 변경 이력

- v0.1 (작성일자: YYYY-MM-DD, 작성자: YOUR_NAME)
  - 프로젝트 상세 정보 + 기본 폴더 구조 템플릿 최초 작성