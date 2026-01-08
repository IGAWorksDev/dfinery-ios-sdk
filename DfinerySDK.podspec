
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.3.4"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.4/DfinerySDK.xcframework.zip",
    :sha256 => '40abeb7b91cdb46a2691474d8db66a6dbbd8e0ba3f90ad7c3f49d420722ac52e'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
