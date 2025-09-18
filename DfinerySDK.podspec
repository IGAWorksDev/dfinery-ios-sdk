
Pod::Spec.new do |spec|
  spec.name         = "DfinerySDK"
  spec.version      = "2.3.1"
  spec.platform = :ios
  spec.summary      = "DfinerySDK."
  spec.homepage     = "https://www.dfinery.ai/"
  spec.description  = <<-DESC
  Dfinery SDK
                   DESC
  spec.license      = { :type => 'Commercial'}
  spec.author       = { "Jimmy" => "jimmy.kang@igaworks.com" }
  spec.source       = { 
    :http => "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.1/DfinerySDK.xcframework.zip",
    :sha256 => '9337f19a4458d8770888235ef58960dad8b24a2afe71b86556a31f0711d28c14'
  }
  spec.ios.deployment_target = '12.0'

  spec.ios.vendored_frameworks = 'DfinerySDK.xcframework'

end
