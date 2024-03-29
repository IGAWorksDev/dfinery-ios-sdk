iOS SDK 설치 후 코드레벨에서 연동하는 방법입니다. [SDK를 설치](#)가 선행되어야 합니다.
# SDK 연동
## SDK 초기화
### AppDelegate 수정
AppDelegate.Swift 파일에 다음과 같이 SDK를 import 합니다.
```swift
import DfinerySDK
```
AppDelegate 클래스에 sdk초기화 코드를 추가합니다.
```swift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        Dfinery.shared().sdkInit(serviceId: "SERVICE_ID")
        
        return true
    }
}
```
## SDK 부가 설정
debug를 위한 설정입니다.  
해당 값 설정 시 로그가 debug conosole에 표시됩니다.
```swift
Dfinery.shared().sdkInit(
    serviceId: "SERVICE_ID",
    config: [DF.CONFIG_IS_DEBUG: true]
)
```
## SDK 초기화 완료
SDK의 초기화가 완료되었습니다. 이제부터 iOS Dfinery SDK의 사용이 가능합니다