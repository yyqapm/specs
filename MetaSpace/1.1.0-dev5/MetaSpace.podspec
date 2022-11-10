Pod::Spec.new do |s|
  s.name         = 'MetaSpace'
  s.version      = '1.1.0-dev5'
  s.summary      = 'MetaSpace'
  s.homepage     = 'http://www.joyyinc.com/'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2022-2099 Joyy Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'MetaSpace' => 'fanchunxing1@joyy.com' }
  s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/MetaSpace/1.1.0-dev5/MetaSpace.zip" }
  s.requires_arc = true

  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.10'
  s.default_subspec   = "Core"

  s.subspec 'Core' do |l| 
  l.vendored_library             = 'libs/libMetaSpaceSDK.a'
  l.frameworks                = 'CoreAudio','Accelerate'
  l.xcconfig              = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/MetaSpace/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/MetaSpace/include/MetaSpaceSDK"' }
  l.source_files    = 'include/MetaSpaceSDK/*.h'
  l.header_mappings_dir = 'include/MetaSpaceSDK'
  l.dependency 'MetaSpace/Unity'
  end

  s.subspec 'Unity' do |u|
    u.vendored_library          = 'libs/libYYUnityLauncher.a'
    u.frameworks                = 'CoreAudio','Accelerate'
    u.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/MetaSpace/libs"' }
    u.dependency 'Unity3dEngine'
  end

end
