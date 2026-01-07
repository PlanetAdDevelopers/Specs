Pod::Spec.new do |s|
  s.name         = "SKPAdBenefit"
  s.summary      = "SKPAdBenefit released 2026-01-07 (1)"
  s.description  = "The SKPAdBenefit SDK makes it easy to serve advertisements with benefit in your iOS app. It supports native ads and video ads. It provides powerful and customizable UI elements to make the ads look great in your app."
  s.version      = "1.14.2"
  s.license      = { :type => "SKPlanet", :text => "Copyright 2018 SK Planet." }
  s.author       = "SKP"
  s.homepage     = "https://github.com/PlanetAdDevelopers"

  s.platform     = :ios, '15.0'
  s.requires_arc = true
  
  s.static_framework = true

  s.source       = { :http => "https://storage.googleapis.com/planetad/v1.14.2/SKPAdBenefit.zip" }

  s.pod_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '15.0',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

  s.user_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '15.0',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.dependency 'SDWebImage', '~> 5.0'
  s.dependency 'SDWebImageWebPCoder'
  s.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.22.0'
  s.dependency 'ReactiveObjC', '~> 3.1.1'

  s.vendored_frameworks = [
    'SKPAdBenefit.framework',
    'SKPAdBenefitNative.framework',
    'SKPAdBenefitInterstitial.framework',
    'SKPAdBenefitFeed.framework',
    'SKPAdBenefitWebInterface.framework'
  ]
end
