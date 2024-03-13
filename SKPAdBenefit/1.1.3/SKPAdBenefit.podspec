Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '12.0'
  s.requires_arc = true

  s.name = "SKPAdBenefit"
  s.summary = "SKPAdBenefit released 2024-03-13 (3)"
  s.description = "The SKPAdBenefit SDK makes it easy to serve advertisements with benefit in your iOS app. It supports native ads and video ads. It provides powerful and customizable UI elements to make the ads look great in your app."
  s.version = "1.1.3"
  s.license = { :type => "SKPlanet", :text => "Copyright 2018 SK Planet." }
  s.author = "SKP"
  s.homepage = "https://github.com/PlanetAdDevelopers"

  s.source = {
    :http => "https://storage.googleapis.com/planetad/v1.1.3/SKPAdBenefit.zip"
  }

  s.dependency 'SDWebImage', '~> 5.18.7'
  s.dependency 'SDWebImageWebPCoder'
  s.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.19.1'
  s.dependency 'ReactiveObjC', '~> 3.1.1'

  s.vendored_frameworks = ['SKPAdBenefit.framework', 'SKPAdBenefitNative.framework', 'SKPAdBenefitInterstitial.framework', 'SKPAdBenefitFeed.framework', 'SKPAdBenefitWebInterface.framework']
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
   
