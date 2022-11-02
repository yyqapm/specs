Pod::Spec.new do |s|
  s.name             = 'metabolt'
  s.version          = '1.0.0'
  s.license          = { :type => 'MIT' }
  s.homepage         = 'https://git.duowan.com'
  s.authors          = { 'xiongxiong' => 'xiongxiong@joyy.com' }
  s.summary          = 'MetaBolt SDK.'
  s.source           = { :http => 'http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/metabolt/1.0.0/metabolt.zip'}
  s.vendored_frameworks     = 'libs/MetaBolt.framework'
  s.framework        = 'Foundation'
  s.requires_arc     = true
  s.swift_version    = '5.0'
  s.platform         = :ios, '8.0'
end
