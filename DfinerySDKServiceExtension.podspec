
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDKServiceExtension"
  spec.version      = "2.4.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDKServiceExtension."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.0/DfinerySDKServiceExtension.xcframework.zip",
    :sha256 => 'ef606a6c7fe5621735df2206e1d288e8f212697ed8e7d9dbf7e9271aed146f49'
  }
  spec.ios.deployment_target = '12.0'
  
  spec.ios.vendored_frameworks = 'DfinerySDKServiceExtension.xcframework'
  
end
  