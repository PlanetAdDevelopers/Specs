Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '15.0'
  s.requires_arc = true

  s.name = "SKPAdBenefit"
  s.summary = "SKPAdBenefit released 2026-01-08 (4)-3"
  s.description = "The SKPAdBenefit SDK makes it easy to serve advertisements with benefit in your iOS app. It supports native ads and video ads. It provides powerful and customizable UI elements to make the ads look great in your app."
  s.version = "1.14.2"
  s.license = { :type => "SKPlanet", :text => "Copyright 2018 SK Planet." }
  s.author = "SKP"
  s.homepage = "https://github.com/PlanetAdDevelopers"

  s.source = {
    :http => "https://storage.googleapis.com/planetad/v1.14.2/SKPAdBenefit.zip"
  }
  
  s.vendored_frameworks = [
    'SKPAdBenefit.xcframework',
    'SKPAdBenefitNative.xcframework',
    'SKPAdBenefitInterstitial.xcframework',
    'SKPAdBenefitFeed.xcframework',
    'SKPAdBenefitWebInterface.xcframework'
  ]
end
   
