
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
    :sha256 => 'c67a4c96168b67e57cffe52f81489118f932803ccadd1893b16b48178c30a2cd'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
