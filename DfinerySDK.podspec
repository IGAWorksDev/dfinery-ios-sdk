
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.4.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.1/DfinerySDK.xcframework.zip",
    :sha256 => '4ad5103688f4695d027172b349def5bd79a881ff774f4b704f75586177ee4de3'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
