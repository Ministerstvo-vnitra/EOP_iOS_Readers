Pod::Spec.new do |s|
  s.name             = 'GemaltoSDKWrapper'
  s.version          = '0.2.2'
  s.summary          = 'Cocoapods wrapper for Gemalto IDGo800 framework.'
  s.description      = 'Use this pod instead of the Gemalto IDGo800 framework.'
  s.homepage         = 'https://github.com/Ministerstvo-vnitra/EOP_iOS_Readers'
  s.license          = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author           = { "MONET+,a.s." => "support@monetplus.cz" }

  s.ios.deployment_target = '9.0'
  s.swift_version    = '4.2'
  s.ios.vendored_frameworks = s.name.to_s + '.framework', 'miniDriver.framework'
  s.source           = { :http => s.homepage.to_s + '/raw/master/Gemalto/Wrapper/builds/' + s.name.to_s + '_' + s.version.to_s + '.zip' }
  s.exclude_files = "Classes/Exclude"

  # Dependencies
  s.ios.frameworks       = 'Security', 'CoreBluetooth', 'AudioToolbox', 'ExternalAccessory'
  s.library = 'z', 'sqlite3.0'
end
