Pod::Spec.new do |s|
  s.name             = 'Unity3dEngine'
  s.version          = '1.6.8-2021h-dev'
  s.license          = { :type => 'MIT' }
  s.homepage         = 'http://www.joyyinc.com/'
  s.authors          = { 'Unity3dEngine' => 'fanchunxing1@joyy.com' }
  s.summary          = 'unity SDK.'
  s.source           = { :http => 'http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/Unity3dEngine/1.6.8-2021h-dev/Unity3dEngine.zip'}
  s.vendored_frameworks     = 'libs/UnityFramework.framework'
  s.framework        = 'Foundation'
  s.requires_arc     = true
  s.swift_version   = '5.0'
  s.platform         = :ios, '8.0'
end
