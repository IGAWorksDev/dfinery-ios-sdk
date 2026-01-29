
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.3.5"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.5/DfinerySDK.xcframework.zip",
    :sha256 => 'e892fd8ee947929def3fe84826e6c1d5693b1fca49534031a5d0fb983ae38714'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
