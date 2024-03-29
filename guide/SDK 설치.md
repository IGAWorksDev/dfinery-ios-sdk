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
### 2. Dfinery SDK GitHub 저장소 입력
### 3. Dependency Rule 입력
### 4. 필요한 타겟에 DfinerySDK 추가
## 수동 설치
### 1. 프레임워크 다운로드
[여기](https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/)에서 프레임워크를 다운로드해주세요
### 2. 프로젝트에 프레임워크 추가
