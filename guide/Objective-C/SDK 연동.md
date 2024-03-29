iOS SDK 설치 후 코드레벨에서 연동하는 방법입니다. 연동하기 전에 [SDK를 설치](#)해야 합니다.
# SDK 연동
## SDK 초기화
### AppDelegate 수정
AppDelegate.m 파일에 다음과 같이 SDK를 import 합니다.
```objective-c
#import <DfinerySDK/DfinerySDK.h>
```
AppDelegate 클래스에 sdk초기화 코드를 추가합니다.
```objective-c
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[Dfinery shared] sdkInitWithServiceId:@"SERVICE_ID"];
료
    return YES;
}
```
## SDK 부가 설정
debug를 위한 설정입니다.  
해당 값 설정 시 로그가 debug conosole에 표시됩니다.
```objective-c
[[Dfinery shared] sdkInit:@"SERVICE_ID"
                withConfig:@{DF.CONFIG_IS_DEBUG: @YES}];
```
## SDK 연동 완료
SDK의 초기화가 완료되었습니다. 이제부터 iOS Dfinery SDK의 사용이 가능합니다