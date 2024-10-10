Pod::Spec.new do |s|
  s.authors =
  {
    'Wortise' => 'hello@wortise.com'
  }

  s.name = 'WortiseSDK'
  s.version = '1.5.1-beta2'
  s.summary = 'Wortise SDK for iOS'
  s.homepage = 'https://wortise.com/'

  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'

  s.source = 
  {
    :http => "https://cdn.resources.wortise.com/sdk/ios/wortise-ios-sdk-#{s.version}.zip",
    :type => 'zip'
  }

  s.vendored_frameworks = "WortiseSDK.xcframework"

  s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreLocation', 'CoreMedia', 'CoreTelephony', 'SafariServices', 'UIKit', 'WebKit'

  s.dependency 'Google-Mobile-Ads-SDK', '~> 10.4'
  s.dependency 'GoogleMobileAdsMediationAppLovin', '12.1.0.1'
  s.dependency 'GoogleMobileAdsMediationFacebook', '6.14.0.0'
  s.dependency 'GoogleMobileAdsMediationInMobi', '10.6.0.0'

  s.pod_target_xcconfig =
  {
    'VALID_ARCHS' => 'arm64 arm64e x86_64',
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64'
  }
end
