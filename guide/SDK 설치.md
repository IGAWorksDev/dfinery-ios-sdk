iOS SDK를 설치하는 방법입니다.

### SDK 지원 환경
- iOS 12.0 +
- Xcode 15.0 +
---  
# SDK 설치
Dfinery iOS SDK는 CocoaPods, Swift Package Manager(SPM), 수동 설치를 지원합니다.
## CocoaPods
### 1. CocoaPods 설치
최신 버전의 CocoaPods을 [설치해주세요](https://guides.cocoapods.org/using/getting-started.html#installation)
### 2. 의존성 추가
Xcode 프로젝트 폴더에 `Podfile` 추가 후 Podfile에 Dfinery SDK 의존성을 추가해주세요
<details open>
    <summary>Podfile</summary>

```
target 'YourAppTarget' do
  pod 'DfinerySDK'
end
```
</details>

### 3. 의존성 설치
터미널에서 다음의 명령어로 SDK를 설치해 주세요
```
pod install
```
</details>

## Swift Package Manager(SPM)
### 1. Xcode에서 패키지 의존성 추가
<img src="https://github.com/IGAWorksDev/dfinery-ios-sdk/assets/114295024/5816d823-8f62-465a-933c-4021290882af" width="600" height="370">

### 2. Dfinery SDK GitHub 저장소 입력

<img src="https://github.com/IGAWorksDev/dfinery-ios-sdk/assets/114295024/a9b068f5-8dd2-4d6d-8209-1bbabc03a76d" width="600" height="370">
  
저장소 명은 https://github.com/IGAWorksDev/dfinery-ios-sdk 입니다.
### 3. Dependency Rule 입력 및 타겟에 DfinerySDK 추가
<img src="https://github.com/IGAWorksDev/dfinery-ios-sdk/assets/114295024/7a350767-fa38-4fcc-a799-8690f87e2c2d" width="600" height="370">  

> [!TIP]
> Dfinery SDK는 [유의적 버전(Semantic versioning)2.0](https://semver.org/)을 따릅니다.
## 수동 설치
### 1. 프레임워크 다운로드
[여기](https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/)에서 프레임워크를 다운로드해주세요
### 2. 프로젝트에 프레임워크 추가
Xcode의 Targets -> General -> Frameworks, Libraries, and Embedded Content -> + 클릭 -> Add Others... -> Add Files.. 를 통해 다운로드 받은 프레임워크를 추가해주세요  
<img src="https://github.com/IGAWorksDev/dfinery-ios-sdk/assets/114295024/407c67d6-6894-42f9-8269-d2bef71f28a6" width="600" height="370">