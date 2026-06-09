# AI 에이전트와 프로젝트 시작하기 가이드

> 이 문서는 새로운 프로젝트를 시작할 때
> AI 에이전트(코딩/설계 도우미)와 어떻게 첫 세션을 열고 세팅할지에 대한 공통 절차를 정의합니다.

---

## 1. 사전 준비: 사람이 먼저 정리해야 할 것

AI 에이전트에게 말을 걸기 전에, 아래 4가지를 **간단히 메모로라도 정리**합니다.

1. 프로젝트 목적
   - 이 프로젝트로 무엇을 만들고 싶은지 한 줄로 정리
2. 대략적인 도메인
   - 예: 하네스 설계, 재고 관리, 주문, 결제 등
3. 기술 스택/제약
   - 예: Spring Boot 3 + Java 17, REST API, DB는 나중에 정함 등
4. 이미 갖고 있는 규칙/결정 사항
   - 예: URI는 kebab-case, JSON은 camelCase, 문서는 모두 md 등
이 4가지를 기반으로 **첫 프롬프트**를 작성합니다.

---

## 2. 첫 프롬프트 템플릿

새 프로젝트에서 AI 에이전트와 대화를 시작할 때 사용할 수 있는 공통 템플릿입니다.
```text
(예시)

나는 새로운 API 프로젝트를 시작하려고 합니다.

1) 프로젝트 목적:
 - (예) 기존 레거시 API를 대체할 신규 하네스 설계 API를 설계/구현하는 것이 목표입니다.
 - (예) 동시에 다른 프로젝트에도 재사용할 수 있는 문서/코드 템플릿을 만들고 싶습니다.

2) 도메인:
 - (예) 하네스 설계 도메인 (지금은 테스트용 API부터 시작)

3) 기술 스택/제약:
 - 백엔드: Spring Boot 3 + Java 17
 - API 스타일: REST
 - 문서: 모두 Markdown(.md) 파일 사용
 - 네이밍: URI는 kebab-case, JSON은 camelCase

4) 지금 에이전트에게 원하는 것:
 - 프로젝트 전반에 사용할 공통 문서 템플릿과 폴더 구조를 먼저 정의하고 싶습니다.
 - 그 다음에 테스트용 API 하나를 설계→문서→테스트→코드 순서로 같이 만들고 싶습니다.

위 정보를 바탕으로,
1) .ai/docs/ 아래의 기본 폴더 구조 제안,
2) project 개요/상세/워크플로우 md 템플릿 초안,
을 먼저 만들어 주세요.
```

> 규칙: 처음 요청에서는
> “배경 + 목적 + 도메인 + 기술 + 지금 할 일”을 **한 번에 알려주는 것**을 원칙으로 합니다.

---

## 3. 에이전트에게 처음 요청할 작업 순서

새 프로젝트 최초 세션에서는, 아래 순서대로 요청하는 것을 권장합니다.

### 3.1 단계 1 – 문서/폴더 구조부터

요청 예시:

 - `.ai/docs/` 아래에 어떤 폴더(`project`, `naming`, `api-design`, `api-tests`, `architecture` 등)를 둘지 제안해 달라고 요청
 - 각 폴더에 들어갈 **md 파일 이름과 역할**을 템플릿 형태로 요청

이 단계의 목표:
 - “이 프로젝트에서 문서와 코드를 어디에 둘지”를 에이전트와 합의

### 3.2 단계 2 – project 템플릿 생성

요청 예시:

 - `.ai/docs/project/project-overview.md`
 - `.ai/docs/project/project-details.md`
 - `.ai/docs/project/project-workflow.md`

위 3개 파일의 공통 템플릿을 만들어 달라고 요청하고,
생성된 템플릿을 보고 사람이 일부 수정/삭제/추가.

### 3.3 단계 3 – naming 규칙 템플릿

요청 예시:

 - `.ai/docs/naming/naming-rules-<domain>.md` 템플릿 생성 요청
 - 다음과 같은 항목을 포함하도록 요구:
   - URI 네이밍 (kebab-case, 복수형 리소스 등)
   - JSON 필드 네이밍 (camelCase 등)
   - 패키지 구조/클래스 명명 규칙

### 3.4 단계 4 – 테스트용 API 설계 템플릿

요청 예시:

 - `.ai/docs/api-design/api-design-<domain>-overview-v1.md`
 - `.ai/docs/api-design/api-design-<domain>-resource-sample-v1.md`
 - `.ai/docs/api-tests/api-tests-<domain>-v1.md`

에 대한 **골격 템플릿**만 먼저 만들어 달라고 요청

이 단계까지 완료되면:
 - “문서/폴더 구조 + 설계/테스트 템플릿”이 준비된 상태가 됩니다.

---

## 4. 에이전트와 작업할 때 지켜야 할 루틴

### 4.1 항상 “템플릿 → 인스턴스” 순서로

1. 먼저 **공통 템플릿**을 에이전트에게 만들게 합니다.
2. 그 다음에, 해당 템플릿에 **현재 프로젝트의 구체 값**을 채워 넣도록 요청합니다.

이렇게 하면:
 - 다른 프로젝트에서도 같은 템플릿을 재사용하기 쉬워집니다.
 - 특정 프로젝트에만 유효한 내용이 공통 문서에 섞이는 것을 줄일 수 있습니다.

### 4.2 한 번에 하나의 관심사만

 - “폴더 구조 + 템플릿 + 실제 코드”를 한 번에 부탁하지 않습니다.
 - 예:
   - 세션 1: `.ai/docs/project` 템플릿 정의
   - 세션 2: `.ai/docs/naming` 템플릿 정의
   - 세션 3: API 설계 템플릿 정의
   - 세션 4: 첫 테스트용 API 구체 설계/코드 작성

이렇게 나누면 에이전트와의 대화도 **정리된 상태로 유지**하기 쉽습니다.

---

## 5. “첫 세션에서 반드시 알려줘야 하는 정보” 체크리스트

AI 에이전트와 새로운 프로젝트를 시작할 때, 첫 메시지에 아래 항목을 모두 포함하는 것을 목표로 합니다.

 - [ ] 프로젝트 목적 (한 줄)
 - [ ] 도메인 이름/분야
 - [ ] 기술 스택 (언어, 프레임워크, 대략적인 버전)
 - [ ] 문서 포맷 (예: 모두 Markdown)
 - [ ] 이미 결정된 컨벤션 (URI/JSON/패키지/브랜치 전략 등)
 - [ ] 지금 세션에서 하고 싶은 “가장 작은 목표” 하나
   - 예: `.ai/docs/project` 템플릿만 정의하기
 - [ ] 장기적으로 이 프로젝트를 다른 프로젝트에도 재사용할 계획이 있다는 것

위 체크리스트를 만족하면,
에이전트는 훨씬 더 일관된 형태의 템플릿/코드를 제안하기 쉬워집니다.

---

## 6. 이 가이드 문서를 유지·업데이트하는 방법

 - 파일 위치 예시:
   - `.ai/docs/project/ai-agent-bootstrap.md`
 - 새로운 프로젝트를 시작할 때마다:
   - 이 문서를 다시 읽고, 필요한 부분을 복사·수정하여 사용
 - 실제 경험에서 배운 점이 있을 때마다:
   - “주의사항”이나 “첫 프롬프트 예시”를 이 문서에 추가
   - 변경 이력에 날짜/작성자/내용을 기록

---

## 7. 실행 상태 추적 및 관리 (중요)

실행 계획 문서에서는 **항상 현재 진행 상태를 명시**해야 합니다. 이렇게 하면:
- 다음 세션에서 어디서 멈췄는지 쉽게 파악 가능
- 에이전트와의 대화에서 현재 상태를 공유하기 용이
- 프로젝트 진행 이력을 문서에 남길 수 있음

### 권장 포맷

`.ai/docs/project/project-execution-plan.md`에 아래 형식으로 체크리스트를 유지하세요:

```markdown
## 실행 체크리스트 (현재 진행 상태)

### 완료된 단계 [[COMPLETE]

- [x] 1단계: 프로젝트 가이드 보강 (설명 또는 파일 경로)
- [x] 2단계: 문서 폴더 구조 생성

### 진행 예정 단계 [PENDING]

- [ ] 3단계: 빌드 설정 추가
- [ ] 4단계: 샘플 API 구현

### 블로킹/미연결 항목 [WARNING]

- (선택) 문제나 의존성이 있으면 여기에 기록
```

### 각 세션마다 이 문서를 업데이트하는 순서

1. **세션 시작 시**: `.ai/docs/project/project-execution-plan.md` 열기
2. **작업 진행 중**: 각 단계 완료 후 체크 표시(`[x]`) 추가
3. **세션 종료 시**: 다음 세션을 위해 미완료 항목을 명확히 표시
4. **다음 세션 시작**: 이전 진행 상태를 먼저 확인 후 시작

이 방식을 따르면 에이전트도 **현재 상태를 한눈에 파악**할 수 있고, 프로젝트 진행이 **체계적이고 추적 가능**해집니다.

---

## 8. 실행 규칙: 하나씩 진행하기 [IMPORTANT]

프로젝트 진행 시 **각 Task는 순차적으로 하나씩 진행**하는 것이 성공의 핵심입니다.

### 왜 "하나씩"인가?

- 복잡도 증가 방지: 여러 작업을 동시에 하면 상호 간섭 발생 가능
- 피드백 반영 용이: 각 Task 완료 후 결과를 다음 Task에 반영 가능
- 문제 추적 쉬움: 어느 Task에서 문제가 발생했는지 명확
- 진행 상황 명확: 현재 상태를 한눈에 파악 가능

### 진행 방식

1. **현재 Task 결정**
   - `.ai/docs/project/project-execution-plan.md` 에서 가장 위에 있는 미완료 Task 선택
   - "현재 진행 중" 섹션에 Task 이름과 "[IN PROGRESS]" 표시

2. **Task 실행**
   - 에이전트에게 **현재 Task만** 요청
   - 예: "Task 1을 진행해주세요. 이전 진행 상황은 project-execution-plan.md를 참고하세요."
   - 다른 Task와 섞지 않음

3. **Task 완료**
   - 결과물 확인 및 검증
   - 이 파일(`project-execution-plan.md`)의 체크리스트 업데이트
   - 완료 상태를 명확히 표시 (`[x]`)

4. **피드백 반영**
   - Task 진행 중 발견사항 기록
   - 이 가이드(`ai-agent-bootstrap.md`)에 학습 내용 추가
   - 다음 Task가 참고할 수 있도록 정리

### 예시: Task 1 완료 후

**수정 전:**
```markdown
### 진행 예정 단계 [PENDING]
- [ ] Task 1: `build.gradle` 파일 생성
- [ ] Task 2: ...
```

**수정 후:**
```markdown
### 완료된 단계 [COMPLETE]
- [x] Task 1: `build.gradle` 파일 생성
  - 파일 위치: `/project/build.gradle`
  - 결과: Spring Boot 3.2.0, Gradle 8.6 래퍼 포함
  - 학습 내용: [새로 알게 된 점을 ai-agent-bootstrap.md에 추가]

### 진행 예정 단계 ⏳
- [ ] Task 2: ...
```

---

## 9. Task 완료 후 피드백 반영 방법 [FEEDBACK]

각 Task가 완료되면 그 결과를 가이드에 반영하여, 다음 프로젝트에서도 같은 실패/성공을 반복하지 않도록 합니다.

### 반영할 곳

1. **프로젝트별 `project-execution-plan.md`**
   - 각 Task별 완료 상황 업데이트
   - 예상 시간, 실제 소요 시간 기록 (선택)
   - Task 실행 중 발견한 이슈 기록

2. **공통 가이드 `ai-agent-bootstrap.md`**
   - 새로 발견한 "Best Practice" 추가
   - 주의사항 또는 트러블슈팅 내용 기록
   - 기술 스택별 권장 버전 업데이트

### 반영 예시

**Task 1: `build.gradle` 생성 완료 후**

1. `project-execution-plan.md`에 아래 추가:
```markdown
- [x] Task 1: `build.gradle` 파일 생성
  - 파일: `/Users/misun/projects/prj-harness/build.gradle`
  - Spring Boot: 3.2.0
  - Gradle Wrapper: 8.6
  - 테스트: `./gradlew bootRun` 성공 [COMPLETE]
```

2. `ai-agent-bootstrap.md`의 "Spring Boot API 프로젝트용 보강 및 권장사항" 섹션 업데이트:
```markdown
- **Gradle 래퍼 설정**: 프로젝트 생성 시 반드시 `gradle wrapper` 포함할 것
  - 명령: `gradle wrapper --gradle-version 8.6`
  - 파일 확인: `gradlew`, `gradlew.bat`, `gradle/wrapper/` 디렉토리
```

---

## 변경 이력

 - v0.1 (작성일자: YYYY-MM-DD, 작성자: YOUR_NAME)
   - AI 에이전트와 프로젝트를 시작할 때 사용할 부트스트랩 가이드 템플릿 최초 작성
 - v0.2 (작성일자: 2026-06-08, 수정자: Copilot)
   - 실행 상태 추적 가이드 추가 (섹션 7: 실행 상태 추적 및 관리)
 - v0.3 (작성일자: 2026-06-08, 수정자: Copilot)
   - "하나씩 진행"하는 실행 규칙 추가 (섹션 8)
   - Task 완료 후 피드백 반영 방법 추가 (섹션 9)

## Spring Boot API 프로젝트용 보강 및 권장사항

아래는 이 문서를 Spring Boot 기반 API 프로젝트 시작용으로 사용할 때 추가하거나 수정하면 좋은 항목들입니다.

 - **기본 기술 스택 제안**: Spring Boot 3.x, Java 17+, Gradle (권장) 또는 Maven
 - **빌드·런 환경**: `gradlew`/`mvnw` 래퍼 사용 권장, `Dockerfile`·`docker-compose.yml` 예시 포함
 - **프로젝트 구조**: `src/main/java`, `src/main/resources`, `src/test/java` 표준 구조와 패키지 네이밍 규칙 예시
 - **의존성 템플릿**: Spring Web, Spring Data JPA, Spring Security(선택), Spring Boot Actuator, Spring Retry, Lombok(선택), 테스트: JUnit5, Mockito
 - **설정·환경 관리**: `application.yml` 프로파일별 예시(dev/stage/prod), 시크릿은 환경변수/Secrets 관리 권장
   - Spring Boot 설정 파일(`application.yml`)은 서버 포트, 데이터 소스, JPA, 로깅 등 실행 환경을 정의하며, 코드와 설정을 분리해 관리하기 위한 중심 구성 파일입니다.
 - **로깅/모니터링**: 로깅 설정 예시(Logback), Actuator + Prometheus/Grafana 연동 안내(참고 템플릿)
 - **테스트 전략**: 단위 테스트, 통합 테스트(Embedded DB 사용 예시), API 계약 테스트(예: Spring REST Docs 또는 Pact)
 - **CI/CD**: GitHub Actions 템플릿(빌드 → 테스트 → 이미지 빌드 → 배포), PR 템플릿 권장
 - **개발 편의**: DevTools 활성화, Hot reload 안내, 로컬용 `docker-compose`로 DB/Redis 등 동작 예시
 - **보안/운영 체크리스트**: 기본 인증/인가 체크, CORS, 입력 검증, 요청 로깅, 에러 포맷 표준화
 - **문서 템플릿 연결**: `.ai/docs/naming`, `.ai/docs/api-design`, `.ai/docs/api-tests` 템플릿과 연결하여 사용

위 항목들을 이 문서와 프로젝트 템플릿에 통합하면, 이후 에이전트와의 세션에서 구체API 설계→문서→코드화 작업으로 자연스럽게 이어질 수 있습니다.
