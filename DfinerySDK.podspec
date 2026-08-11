
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.5.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.1/DfinerySDK.xcframework.zip",
    :sha256 => 'f674c7f393b40bbfe2619772c09a215574ef72a739a72476941cf2231cc96aa5'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
