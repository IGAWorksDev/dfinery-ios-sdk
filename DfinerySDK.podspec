
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "1.0.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.igaworks.com/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.0.0/DfinerySDK.xcframework.zip",
    :sha256 => '6882fab2e475274779f3a896e8875c777e00464a39d72c9eefa7736cc6214bb7'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
