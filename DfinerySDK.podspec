
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "1.1.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.1/DfinerySDK.xcframework.zip",
    :sha256 => '4ee4d1f6591c5e84862b69440f6f7021fe1fdc3f0c81289ffc733ca5c4b1d2db'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
