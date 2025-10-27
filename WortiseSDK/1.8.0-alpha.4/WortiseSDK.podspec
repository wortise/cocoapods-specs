Pod::Spec.new do |s|
  s.authors =
  {
    'Wortise' => 'hello@wortise.com'
  }

  s.name = 'WortiseSDK'
  s.version = '1.8.0-alpha.4'
  s.summary = 'Wortise SDK for iOS'
  s.homepage = 'https://wortise.com/'

  s.license =
  {
    :text => 'Copyright Wortise. All Rights Reserved.',
    :type => 'Copyright'
  }

  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'

  s.source = 
  {
    :http => "https://cdn.resources.wortise.com/sdk/ios/wortise-ios-sdk-#{s.version}.zip",
    :type => 'zip'
  }

  s.vendored_frameworks = 'Frameworks/WortiseSDK.xcframework'

  s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreLocation', 'CoreMedia', 'CoreTelephony', 'SafariServices', 'UIKit', 'WebKit'

  s.dependency 'Google-Mobile-Ads-SDK', '~> 12.4.0'
  s.dependency 'GoogleMobileAdsMediationChartboost'
  s.dependency 'GoogleMobileAdsMediationFacebook'
  s.dependency 'GoogleMobileAdsMediationInMobi'
  s.dependency 'GoogleMobileAdsMediationIronSource'
  s.dependency 'GoogleMobileAdsMediationPangle'
  s.dependency 'GoogleMobileAdsMediationUnity'
  s.dependency 'GoogleMobileAdsMediationVungle'

  s.pod_target_xcconfig =
  {
    'VALID_ARCHS' => 'arm64 arm64e x86_64',
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64'
  }
end
