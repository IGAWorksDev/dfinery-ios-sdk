
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.2.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.2.0/DfinerySDK.xcframework.zip",
    :sha256 => '894b6333f9e789d21029c03f1b08aa80c6ac031309b3585443d7b7ffe0f9970b'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
