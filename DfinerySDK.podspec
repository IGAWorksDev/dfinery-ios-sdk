
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.4.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.1/DfinerySDK.xcframework.zip",
    :sha256 => 'bda725c77d93e69a9bacbc5b4f9881d4c29ef6d20305063333c457ad74f8d2d1'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
