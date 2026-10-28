
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.6.0"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.6.0/DfinerySDK.xcframework.zip",
    :sha256 => '83c7532e8bb692b257eb5146b6bac298c264bbcdb7e14e3d6d086281908d067c'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
