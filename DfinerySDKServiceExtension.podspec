
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDKServiceExtension"
  spec.version      = "2.3.5"
  spec.platform = :ios
  spec.summary      = "DfinerySDKServiceExtension."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.5/DfinerySDKServiceExtension.xcframework.zip",
    :sha256 => '1b23ff906a6c4ee7daa6489e48f27e5eacc6b41f8611e8b40075ac9d0a9c1b0f'
  }
  spec.ios.deployment_target = '12.0'
  
  spec.ios.vendored_frameworks = 'DfinerySDKServiceExtension.xcframework'
  
end
  