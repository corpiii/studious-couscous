# ☁️ TMDB 영화 API 클론코딩
TMDB의 API 중 일부를 클론코딩한 내역입니다.
- 영화 상세조회 API
- 추천(관련)영화 조회 API

개발을 진행하며 정리한 개발일지와 발생했던 이슈와 해결방법을 작성한 [페이지](https://www.notion.so/MISSION-The-Movie-DB-API-f408dc0eef8b487ebaf45e0d08abf03b)입니다.

# 🧱 기술 스택
<img width="637" alt="스크린샷 2024-09-16 오전 9 10 09" src="https://github.com/user-attachments/assets/d2941ba9-1487-48df-bf73-6ed33e4daffd">

# ⚙️ 주요 업무

## ERD 설계
[링크](https://www.erdcloud.com/d/GyRRTGRaRzbdYAw9Q)
<img width="1800" alt="스크린샷 2024-09-16 오전 9 17 10" src="https://github.com/user-attachments/assets/69ada2d2-20a5-4ff7-83af-a3fea787e166">

## 스키마 및 더미데이터 생성
- [Schema.sql](https://github.com/corpiii/studious-couscous/blob/main/src/main/resources/schema.sql)
- [Dummy.sql](https://github.com/corpiii/studious-couscous/blob/main/src/main/resources/data.sql)

## 쿼리 최적화
- 영화 상세조회 API
  - 조회 시 발생 쿼리 6개 -> 1개로 최적화
- 추천(관련)영화 조회 API
  - 페이지당 20개의 영화 조회 시 42개 -> 24개로 최적화

[쿼리 최적화 관련 문서](https://www.notion.so/1029c9b77f8a8069bce1f48a66da2706)

## API 명세서
- [영화 상세 조회 API 명세서](https://www.notion.so/API-1029c9b77f8a8046b1e3fffe01184482)

## Issue 와 PR을 통한 프로젝트 관리
|Issue|PR|
|:--:|:--:|
|<img width="584" alt="스크린샷 2024-09-16 오전 9 27 38" src="https://github.com/user-attachments/assets/f1ce3d29-88fe-4860-850b-9fc6a9f7f211">|<img width="669" alt="스크린샷 2024-09-16 오전 9 27 46" src="https://github.com/user-attachments/assets/050f3bc1-d43b-4181-9dbe-f7f6b5dcdbe9">|

Issue를 활용해서 해결할 문제를 정의하고
기능 단위의 PR을 통해 프로젝트를 관리하고 있습니다.
