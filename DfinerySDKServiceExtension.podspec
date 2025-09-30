
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDKServiceExtension"
  spec.version      = "2.3.2"
  spec.platform = :ios
  spec.summary      = "DfinerySDKServiceExtension."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.2/DfinerySDKServiceExtension.xcframework.zip",
    :sha256 => '9696d48b0b09af8f2e35227c38c8bca70c75425f30c549f7692f30b78d0bfee9'
  }
  spec.ios.deployment_target = '12.0'
  
  spec.ios.vendored_frameworks = 'DfinerySDKServiceExtension.xcframework'
  
end
  