Pod::Spec.new do |s|
  s.name             = 'ACSSDKWrapper'
  s.version          = '0.2.1'
  s.summary          = 'Cocoapods wrapper for ACS static library.'
  s.description      = 'Use this pod instead of the ACS static library.'
  s.homepage         = 'https://github.com/Ministerstvo-vnitra/EOP_iOS_Readers'
  s.license          = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author           = { "MONET+,a.s." => "support@monetplus.cz" }

  s.ios.deployment_target = '9.0'
  s.swift_version    = '4.2'
  s.ios.vendored_frameworks = s.name.to_s + '.framework'
  s.source           = { :http => s.homepage.to_s + '/raw/master/ACS/Wrapper/builds/' + s.name.to_s + '_' + s.version.to_s + '.zip' }
  s.exclude_files = "Classes/Exclude"

  # Dependencies
  s.ios.frameworks = 'CoreBluetooth'
end
