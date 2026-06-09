# 프로젝트 개요

> 이 문서는 이 API 프로젝트의 기본 정보를 한눈에 보여주는 개요 문서입니다.  
> 다른 도메인/서비스에도 그대로 복사해 사용할 수 있는 공통 템플릿입니다.

---

## 1. 프로젝트 이름

- 공식 프로젝트명(영문):
  - 예: `Sample Domain API`
- 공식 프로젝트명(국문):
  - 예: `샘플 도메인 API`

---

## 2. 프로젝트 코드 / 저장소

- 시스템/서비스 코드:
  - 예: `SAMPLE-API`
- Git 레포지토리 URL:
  - 예: `https://github.com/yourcompany/sample-api`

---

## 3. 한 줄 요약

- 예:
  - "업무 도메인 데이터를 표준화된 REST API로 제공하기 위한 서비스"

---

## 4. 프로젝트 목적

- 예:
  - 기존에 사용 중이던 레거시 API를 대체할 신규 API 설계/구현 패턴 확보
  - 실제 서비스에 적용 가능한 수준의 설계/문서/테스트/코드 템플릿 구축
  - 설계 → 문서 → 테스트 → 코드 → 자동화까지의 일관된 개발 프로세스 정립

---

## 5. 현재 상태 (공통 포맷)

- 예:
  - 기존 API에 대한 상세 스펙은 수집 중이다.
  - 초기 단계에서는 간단한 **테스트용 API**를 통해:
    - 프로젝트 구조,
    - 네이밍 규칙,
    - 설계/테스트/코드 생성 패턴을 먼저 검증한다.
  - 테스트용 API는 이후 실제 도메인 API로 **대체 또는 확장**될 예정이다.
  - 보안/인증/운영 관련 기능은 후속 단계에서 추가한다.

---

# 프로젝트 준비 단계 관리

> 이 문서는 프로젝트 준비 단계에서 수행해야 할 작업(Task)을 관리하는 문서입니다.  
> 요구사항 수집, 기본 구조 생성, 규칙 확인, 실행 환경 준비, 초기 문서 정리 등 본격적인 분석·설계·구현 전에 필요한 작업을 추적합니다.

---

## 1. 문서 목적

- 프로젝트 준비 단계에서 필요한 작업을 한곳에서 관리한다.
- 준비 작업의 진행 상태, 담당자, 완료 기준을 명확히 한다.
- 본격적인 분석, 설계, 구현 단계로 넘어가기 전에 누락된 항목이 없는지 확인한다.
- AI 에이전트와 사람이 동일한 기준으로 프로젝트 초기 상태를 점검할 수 있도록 한다.

---

## 2. 적용 범위

이 문서는 다음 준비 작업을 대상으로 한다.

- 프로젝트 기본 폴더 구조 준비
- AI 작업 디렉터리 및 문서 구조 준비
- 사용자 요구사항 저장 위치 확인
- 프로젝트 규칙 파일 확인
- Gradle/Spring Boot 실행 환경 준비
- 기본 소스 구조 생성
- 프로젝트 개요, 상세 정보, 아키텍처 문서 준비
- 작업 계획 및 워크플로우 문서 준비
- 초기 검증 및 실행 확인

이 문서는 실제 기능 구현 Task가 아니라, **기능 구현 전에 필요한 준비 단계 Task**를 관리한다.

---

## 3. 상태 정의

| 상태 | 의미 |
|---|---|
| `TODO` | 아직 시작하지 않은 작업 |
| `IN_PROGRESS` | 진행 중인 작업 |
| `DONE` | 완료된 작업 |
| `BLOCKED` | 외부 의존성 또는 확인 필요로 인해 막힌 작업 |
| `SKIPPED` | 현재 범위에서 제외된 작업 |

---

## 4. 준비 단계 Task 목록

| ID | Task | 상태 | 담당 | 완료 기준 | 비고 |
|---|---|---|---|---|---|
| PREP-001 | 프로젝트 루트 구조 확인 | TODO |  | `AGENTS.md`, `.ai/`, `src/`, Gradle 파일 존재 확인 |  |
| PREP-002 | `.ai/` 기본 디렉터리 구조 확인 | TODO |  | `.ai/agents/`, `.ai/docs/`, `.ai/plans/`, `.ai/project/`, `.ai/requirements/`, `.ai/rules/`, `.ai/scripts/` 존재 확인 |  |
| PREP-003 | AI 에이전트 진입점 문서 확인 | TODO |  | `AGENTS.md`가 `.ai/` 구조와 작업 원칙을 안내하는지 확인 |  |
| PREP-004 | 사용자 요구사항 저장 위치 확인 | TODO |  | 요구사항은 `.ai/requirements/`에 저장한다는 원칙 확인 |  |
| PREP-005 | 프로젝트 규칙 파일 확인 | TODO |  | `.ai/rules/` 아래 API, 코딩, 네이밍, 보안, 검증 규칙 확인 |  |
| PREP-006 | 프로젝트 개요 문서 확인 | TODO |  | `.ai/project/project-overview.md`에 프로젝트 기본 정보와 구조가 정리되어 있음 |  |
| PREP-007 | 프로젝트 상세 정보 문서 확인 | TODO |  | `.ai/project/project-details.md`에 기술 스택, 실행 환경, 주요 설정 정보 정리 |  |
| PREP-008 | 프로젝트 아키텍처 문서 확인 | TODO |  | `.ai/project/project-architecture.md`에 기본 아키텍처 방향 정리 |  |
| PREP-009 | 프로젝트 실행 계획 문서 확인 | TODO |  | `.ai/project/project-execution-plan.md`에 단계별 실행 계획 정리 |  |
| PREP-010 | 프로젝트 워크플로우 문서 확인 | TODO |  | `.ai/project/project-workflow.md`에 요구사항 → 분석 → 설계 → 구현 → 검증 흐름 정리 |  |
| PREP-011 | 기본 폴더 생성 스크립트 확인 | TODO |  | `.ai/scripts/create-basic-folder-structure.sh` 존재 및 목적 확인 |  |
| PREP-012 | Spring Boot 기본 소스 생성 스크립트 확인 | TODO |  | `.ai/scripts/create-springboot-base-source.sh` 존재 및 목적 확인 |  |
| PREP-013 | Gradle Wrapper 설정 스크립트 확인 | TODO |  | `.ai/scripts/setup-gradle-wrapper.sh` 존재 및 목적 확인 |  |
| PREP-014 | Gradle 빌드 파일 확인 | TODO |  | `build.gradle`, `settings.gradle`, `gradle.properties` 존재 확인 |  |
| PREP-015 | Java/Spring Boot 실행 환경 확인 | TODO |  | Java 17, Spring Boot, Gradle 기반 실행 가능 여부 확인 |  |
| PREP-016 | 기본 소스 디렉터리 확인 | TODO |  | `src/main`, `src/test` 구조 확인 |  |
| PREP-017 | 초기 빌드 검증 | TODO |  | Gradle 빌드 또는 테스트 명령 실행 가능 여부 확인 |  |
| PREP-018 | 준비 단계 완료 검토 | TODO |  | 모든 필수 준비 Task가 `DONE` 또는 합의된 `SKIPPED` 상태임 |  |

---

## 5. 준비 단계 진행 순서

준비 단계는 기본적으로 다음 순서로 진행한다.

1. 프로젝트 루트 구조 확인
2. `.ai/` 디렉터리 구조 확인
3. `AGENTS.md` 확인
4. `.ai/requirements/` 요구사항 관리 원칙 확인
5. `.ai/rules/` 프로젝트 규칙 확인
6. `.ai/project/` 프로젝트 메타 문서 확인
7. `.ai/scripts/` 자동화 스크립트 확인
8. Gradle/Spring Boot 실행 환경 확인
9. 기본 소스 구조 확인
10. 초기 빌드 또는 테스트 검증
11. 준비 단계 완료 여부 검토

---

## 6. 완료 기준

프로젝트 준비 단계는 다음 조건을 만족하면 완료로 본다.

- 프로젝트 루트 구조가 확인되었다.
- `.ai/` 기본 디렉터리 구조가 확인되었다.
- `AGENTS.md`가 AI 에이전트의 진입점 역할을 한다.
- 사용자 요구사항 저장 위치가 `.ai/requirements/`로 명확히 정의되어 있다.
- 분석/설계/구현 전 `.ai/rules/`를 확인한다는 원칙이 문서화되어 있다.
- 프로젝트 개요, 상세, 아키텍처, 실행 계획, 워크플로우 문서 위치가 확인되었다.
- Gradle Wrapper 및 빌드 설정 파일이 확인되었다.
- Java 17/Spring Boot 기반 실행 환경 점검이 가능하다.
- 준비 단계 Task가 모두 검토되었다.

---

## 7. 이슈 및 확인 필요 사항

| ID | 내용 | 상태 | 담당 | 비고 |
|---|---|---|---|---|
| ISSUE-001 | 프로젝트 공식 이름 확정 필요 | TODO |  | `project-overview.md`에 반영 필요 |
| ISSUE-002 | Git 저장소 URL 확정 필요 | TODO |  | `project-overview.md`에 반영 필요 |
| ISSUE-003 | 실제 도메인 요구사항 문서 작성 필요 | TODO |  | `.ai/requirements/`에 저장 필요 |
| ISSUE-004 | 기본 패키지명 확정 필요 | TODO |  | 소스 생성 및 아키텍처 문서에 반영 필요 |

---

## 8. 변경 이력

| 버전 | 일자 | 작성자 | 변경 내용 |
|---|---|---|---|
| v0.1 | 2026-06-09 | AI Assistant | 프로젝트 준비 단계 관리 문서 최초 작성 |

- 프로젝트 루트 주요 파일/디렉터리:
  - `AGENTS.md` – AI 코딩 에이전트가 프로젝트 작업을 시작할 때 가장 먼저 확인하는 진입점 문서
  - `.ai/` – AI 기반 요구사항, 규칙, 문서, 계획, 스크립트 관리 디렉터리
  - `src/` – 애플리케이션 소스 코드와 테스트 코드
  - `build.gradle` – Gradle 빌드 설정
  - `settings.gradle` – Gradle 프로젝트 설정
  - `gradle.properties` – Gradle 빌드 속성
  - `gradlew`, `gradlew.bat` – Gradle Wrapper 실행 파일
  - `gradle/` – Gradle Wrapper 관련 파일
  - `build/` – 빌드 결과물 디렉터리

- `.ai/` 기본 구조:
  - `.ai/agents/` – AI 에이전트별 역할, 작업 방식, 운영 지침
  - `.ai/docs/` – 분석 문서, 설계 문서, API 문서 등 프로젝트 산출물
  - `.ai/plans/` – 작업 계획, 실행 계획, 단계별 구현 계획
  - `.ai/project/` – 프로젝트 개요, 상세 정보, 아키텍처, 실행 계획, 워크플로우 등 메타 문서
  - `.ai/requirements/` – 사용자 요구사항 저장소
  - `.ai/rules/` – API, 코딩, 네이밍, 보안, 검증 등 프로젝트 규칙
  - `.ai/scripts/` – 프로젝트 생성, 초기화, 검증, 자동화 보조 스크립트

- 코드 디렉터리:
  - `src/main` – 애플리케이션 코드
  - `src/test` – 테스트 코드

> AI 에이전트는 프로젝트 작업을 시작할 때 `AGENTS.md`를 먼저 확인하고, 이후 `.ai/requirements/`, `.ai/rules/`, `.ai/project/`, `.ai/docs/`, `.ai/plans/`의 문서를 기준으로 분석·설계·구현 작업을 진행합니다.
---
