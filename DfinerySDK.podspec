
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.0.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.0.0/DfinerySDK.xcframework.zip",
    :sha256 => '57f288c51e0e92fa61aafe40c399052565b528a1ce93d75cb6219bc8fdd921e0'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
