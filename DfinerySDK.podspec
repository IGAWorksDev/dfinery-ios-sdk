
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.2.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.2.1/DfinerySDK.xcframework.zip",
    :sha256 => 'f2a9c3df1acf8f442b93cdb834572f8f083adf9f448bfa5c3fde8111d8b427f6'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
