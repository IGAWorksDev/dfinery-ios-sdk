
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.4.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.0/DfinerySDK.xcframework.zip",
    :sha256 => '69c8f0c85e7a78acc53717eb803eee73d25ce7e110da93fb96f3b3f27d1a6655'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
