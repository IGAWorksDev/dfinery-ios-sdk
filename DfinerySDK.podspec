
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "1.1.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.0/DfinerySDK.xcframework.zip",
    :sha256 => 'faf1dd36a01e17c3ae4de77de80830a8c2fe35a93ee06f2bfb56a0885f5d1dfd'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
