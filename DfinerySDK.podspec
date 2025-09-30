
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.3.2"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.2/DfinerySDK.xcframework.zip",
    :sha256 => '1d576c1a7ab69f6453c5807f31d1096f3d0a092864d67969229bbc6333f541f3'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
