
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.1.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.1.0/DfinerySDK.xcframework.zip",
    :sha256 => '97ddf0e2ee96718cde785e1a738c4c66389bddffd6efd99cadd531f211df1e29'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
