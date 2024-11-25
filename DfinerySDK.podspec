
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "1.2.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.2.0/DfinerySDK.xcframework.zip",
    :sha256 => '9edfa9257a73a3de875272d7c24565e9b9130eb270a1213eaf76d9ed25b58021'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
