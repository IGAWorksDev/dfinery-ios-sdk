
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.3.3"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.3/DfinerySDK.xcframework.zip",
    :sha256 => '7cf4e1a2e97a1d487093927df2c893f3a9705eccbe4bcae8d81c0b58375af0f5'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
