
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
    :sha256 => 'aadf4dcb929fa13e50c134ca74cbb5e40f8ef3215b9211395cae48742348d7c1'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
