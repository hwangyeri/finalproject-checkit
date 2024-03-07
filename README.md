# Check It !
<img width="70" alt="스크린샷 2024-03-07 오전 1 41 54" src="https://github.com/hwangyeri/finalproject-checkit/assets/114602459/76a86ff4-c044-4d67-b3c3-af8ea43ce061">

### 오프라인 동아리 출석 관리는 체킷
<br/>

<img src="https://user-images.githubusercontent.com/114602459/219393259-154fa9eb-4d3f-40cb-925a-08c50f1de041.png" width=150></img>&nbsp;&nbsp;<img src="https://user-images.githubusercontent.com/114602459/219393295-0285e3a2-a2b9-4487-9a41-362659e35f45.png" width=150></img>&nbsp;&nbsp;<img src="https://user-images.githubusercontent.com/114602459/219393301-0175a676-3e57-4cdc-b3ca-3bada492b241.png" width=150></img>&nbsp;&nbsp;<img src="https://user-images.githubusercontent.com/114602459/219393310-9f9a604a-f92a-4a50-9f67-0443d1ac126e.png" width=150></img>&nbsp;&nbsp;<img src="https://user-images.githubusercontent.com/114602459/219393314-f240605d-b9a3-41c9-ba43-00cb70d49d95.png" width=150></img>&nbsp;&nbsp;

<br/>

## 프로젝트 소개
```
# ADS
- 사용자가 가입한 동아리의 출석체크를 도와주는 앱입니다.

# 페르소나
- 오프라인 동아리 모임을 갖는 사람들

# 개발 목표
- 실제 동아리 활동에서 경험한 불편함을 해소하고, 직접 사용하기 위해 앱 개발을 시작했습니다.
- 여러 예외 상황을 고려하여 범용성을 높이고, HIG를 준수하며 사용자 중심의 UI/UX 디자인에 주력했습니다.
```

## 주요 기능
- 위치 기반 출석 체크 기능 (길찾기 / QR code)
- 동아리 모임 • 출석부 관리 기능
- 날짜별 동아리 일정 관리 기능 (캘린더)
<br/>

### 앱 스토어 링크
🔗 [ 클릭하면 앱스토어로 이동합니다. Check It ! ](https://apps.apple.com/kr/app/check-it/id1671302814https://apps.apple.com/kr/app/check-it/id1671302814)

<br/>

## 개발 환경
- **최소 버전** : iOS 16.0
- **개발 인원** : 5명
- **개발 기간** : 2023.01.16 ~ 2023.02.17 (5주)
<br/>

## 기술 스택
- `SwiftUI`, `MVVM`, `Combine`
- `FireStore`, `FirebaseAuth`, `Firebase Real time DB`
- `GoogleSignIn`, `KakaoAuth`, `GoogleMobileAds`
- `Alamofire`, `MapKit`, `CLLocation`, `WebKit`
- `VisionKit`, `Lottie`, `SkeletonUI`, `AlertToast`
<br/>

## 담당 역할 및 기술
- `CoreLocation`과 `MapKit`을 활용한 사용자의 권한 허용 여부에 따른 로직 구현
- `@State`, `@Binding`과 같은 `PropertyWrapper`를 통한 뷰 간 상태 관리 및 데이터 바인딩
- `ViewModifier`를 이용한 뷰의 스타일 및 레이아웃 추상화
- `Firebase`와의 데이터 연동을 통해 앱의 실시간 데이터 관리 기능과 사용자 인증 구현
- `Git-flow` 전략, `Issue` 및 데일리 스크럼을 통한 팀 프로젝트 개발 프로세스 정립
<br/>

## 문제 해결
### 1. DataBase Normalization
<img width="794" alt="스크린샷 2024-03-06 오후 9 16 15" src="https://github.com/hwangyeri/finalproject-checkit/assets/114602459/77fa2f4f-e780-4211-a5e4-256c4568cbbc">

#### 정규화 이전
- 이전에는 User, Group, Schedule 데이터가 모두 하나의 테이블에 포함되어 있었음. 이로 인해 데이터 중복과 불필요한 복잡성이 발생했으며, 특히 쿼리의 복잡성과 성능 문제가 발생함

#### 정규화 적용
- 문제 해결을 위해 각 엔터티를 독립적인 테이블로 분해하고, 관계를 정의하여 데이터 중복을 최소화함. 이로써 데이터베이스의 일관성이 유지되었고, 쿼리의 간결성이 향상됨.
- 각 테이블을 독립적으로 확장하고, 수정할 수 있어서 개발 및 유지보수가 용이해짐.
<br/>

## UI / UX

|<img src="https://user-images.githubusercontent.com/114602459/228180762-fc73ab44-00ae-4c6f-a0f8-438dadf82fa8.gif" width=250></img>|<img src="https://user-images.githubusercontent.com/114602459/219415926-9f99b934-9f61-4426-a65e-a417e7dcdad3.gif" width=250></img>|
|:-:|:-:|
|`Onboarding, Login View`|`Calendar View`|

<br>

### 버튼 하나로 간편하게 출석하기
> 사용자는 위치 기반 출첵 서비스, 길찾기, QR code 등, 다양한 방법으로 출석할 수 있어요!  
>**약속된 일정 Check It! ➔ 반경 50m 이내 출석하기 버튼 활성화 ➔ 출석 완료 알림**

|<img src="https://user-images.githubusercontent.com/114602459/219385715-09013c0b-5bb4-4071-bff0-26b36d0758ac.gif" width=300></img>|<img src="https://user-images.githubusercontent.com/114602459/219385462-ae5a5870-8ae4-46a2-bc65-4367058337aa.gif" width=300></img>|
|:-:|:-:|
|`MapView`|`MyPage View`|

<br/>

### 동아리 더 쉽고 효율적으로 관리하기
> 방장과 운영진 및 구성원 각자에게 보여지는 뷰가 달라서 디테일하게 출석부를 관리할 수 있어요!  
>**동아리 개설 ➔ 초대 코드 공유로 가입 ➔ 일정 추가 및 수정 ➔ 출석부 관리**

|<img src="https://user-images.githubusercontent.com/114602459/219385384-6422f1e5-bc96-4517-8c96-4e960ddc038e.gif" width=300></img>|<img src="https://user-images.githubusercontent.com/114602459/219385397-7e8cb939-2713-4b93-bf56-a33dc64f028b.gif" width=300></img>|
|:-:|:-:|
|`동아리 개설`|`동아리 참가`|

|<img src="https://user-images.githubusercontent.com/114602459/219385423-2a66dc89-95b5-42e4-9da9-07f35df094f4.gif" width=300></img>|<img src="https://user-images.githubusercontent.com/114602459/219385438-bf4cac84-1912-4ee5-88f9-8cfe1f479d7a.gif" width=300></img>|
|:-:|:-:|
|`방장 출석부`|`개인 출석부`|

<br/>

## 사용자 흐름도 및 아키텍쳐
|<img src="https://user-images.githubusercontent.com/114602459/218664674-71695d53-bc57-4502-b29f-623f1613ac05.png" width=500></img>|<img src="https://user-images.githubusercontent.com/114602459/218670095-ef797fff-a1e2-4445-85e3-b0def6bbacbb.png" width=500></img>|<img src="https://user-images.githubusercontent.com/114602459/218669916-fb598978-0029-4466-b97a-86805dc97333.png" width=500></img>|
|:-:|:-:|:-:|
|`User Flow`|`Wire-frame`|`Wire-frame`|

<br/>
<br/>

## 개발 환경

|개발환경|선택한 방식|
|:---:|:---:|
|브랜치 전략|git-flow|
|이슈 관리|github-Issues|
|구조 관리|MVVM 디자인 패턴|
|Communication|Github와 & Discord를 Webhook 연동|
|Design|Figma|
|문서화|Notion|

<br/>

## 라이센스

```
Alamofire
- https://github.com/Alamofire/Alamofire

SDWebImage
- https://github.com/SDWebImage/SDWebImage

SwiftyJSON
- https://github.com/SwiftyJSON/SwiftyJSON

Kakao Login SDK for iOS
- https://developers.kakao.com/docs/latest/ko/kakaologin/ios

Firebase Apple Open Source Development
- https://github.com/firebase/firebase-ios-sdk
                
FirebaseUI
- https://github.com/firebase/FirebaseUI-iOS
                
AlertToast
- https://github.com/elai950/AlertToast
```

<br/>
