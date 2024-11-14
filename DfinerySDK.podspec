
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "1.1.2"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.2/DfinerySDK.xcframework.zip",
    :sha256 => '4420cf582478ca2d95ce1940f293a2620605abd69f8d5fb11ba7f29fd2e0a78b'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
