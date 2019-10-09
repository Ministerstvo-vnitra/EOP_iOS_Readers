Pod::Spec.new do |s|
  s.name             = 'GemaltoReader'
  s.version          = '0.5.6'
  s.summary          = 'Implementation of ReaderConnectionWrapper / CardConnectionWrapper for Gemalto Readers'
  s.description      = 'Use this pod if you want to support Gemalto Smart Card Readers in your application.'
  s.homepage         = 'https://github.com/Ministerstvo-vnitra/EOP_iOS_Readers'
  s.license          = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author           = { "MONET+,a.s." => "support@monetplus.cz" }

  s.ios.deployment_target = '9.0'
  s.swift_version    = '5.0'
  s.ios.vendored_frameworks = s.name.to_s + '.framework'
  s.source           = { :http => s.homepage.to_s + '/raw/master/Gemalto/Reader/builds/' + s.name.to_s + '_' + s.version.to_s + '.zip' }
  s.exclude_files = "Classes/Exclude"

  # Deps
  s.dependency 'ReaderConnectionWrapper', '~> 0.5.4'
  s.dependency 'GemaltoSDKWrapper', '~> 0.2.3'
end
