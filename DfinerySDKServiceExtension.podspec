
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDKServiceExtension"
  spec.version      = "2.3.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDKServiceExtension."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.1/DfinerySDKServiceExtension.xcframework.zip",
    :sha256 => '731c1905e71f3abd66c5365a05585550347b082522591307eaad75766a3af1e6'
  }
  spec.ios.deployment_target = '12.0'
  
  spec.ios.vendored_frameworks = 'DfinerySDKServiceExtension.xcframework'
  
end
  