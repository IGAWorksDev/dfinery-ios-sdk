
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.6.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.6.1/DfinerySDK.xcframework.zip",
    :sha256 => '2ea5400cc5c25531011e7000f21d0c74d13f8e988089c1c7e5a81fc76c59098e'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
