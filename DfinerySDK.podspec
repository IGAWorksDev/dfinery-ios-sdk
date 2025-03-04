
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.1.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.1.1/DfinerySDK.xcframework.zip",
    :sha256 => 'f8e416efdeb8cf71819fd3719af6c8d07fa7083c8c30b1fa324ca0bd42c41fac'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
