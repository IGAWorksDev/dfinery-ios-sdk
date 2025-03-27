
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDKServiceExtension"
  spec.version      = "2.2.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDKServiceExtension."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.2.0/DfinerySDKServiceExtension.xcframework.zip",
    :sha256 => 'f08e92173da4d7e03bcdd9b9147216209f557dcdcf10376a884feec540598338'
  }
  spec.ios.deployment_target = '12.0'
  
  spec.ios.vendored_frameworks = 'DfinerySDKServiceExtension.xcframework'
  
end
  