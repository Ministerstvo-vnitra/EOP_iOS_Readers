Pod::Spec.new do |s|
  s.name             = 'FeitianReader'
  s.version          = '0.4.9'
  s.summary          = 'Implementation of ReaderConnectionWrapper / CardConnectionWrapper for Feitian Readers'
  s.description      = 'Use this pod if you want to support Feitian Smart Card Readers in your application.'
  s.homepage         = 'https://github.com/Ministerstvo-vnitra/EOP_iOS_Readers'
  s.license          = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author           = { "MONET+,a.s." => "support@monetplus.cz" }

  s.ios.deployment_target = '9.0'
  s.swift_version    = '4.2'
  s.ios.vendored_frameworks = s.name.to_s + '.framework'
  s.source           = { :http => s.homepage.to_s + '/raw/master/Feitian/Reader/builds/' + s.name.to_s + '_' + s.version.to_s + '.zip' }
  s.exclude_files = "Classes/Exclude"

  # Dependencies
  s.dependency 'ReaderConnectionWrapper', '~> 0.5.3'
  s.dependency 'FeitianSDKWrapper', '~> 0.2.5'
end
