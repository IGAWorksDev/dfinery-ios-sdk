
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.5.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.0/DfinerySDK.xcframework.zip",
    :sha256 => 'a325f80147a3f4013d2ef1322bab39045181b143f7601948b9e94b01c637add8'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
