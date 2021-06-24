Pod::Spec.new do |s|
  s.name         = "crashreportsdk"
  s.version      = "2.3.4"
  s.summary      = "crashreport library"
  s.homepage     = "http://www.joyyinc.com"
  s.license     = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2015 YY Inc., Allrights reserved.
    LICENSE
  }
  s.author       = { "yy" => "g-mobile-app@yy.com" }
  s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/crashreportsdk/2.3.4/crashreportsdk.zip" }
  
  s.default_subspec = 'dynamicSSL'
  
  s.subspec 'dynamicSSL' do |ss|
    ss.platform     = :ios, '8.0'
    ss.ios.deployment_target = '8.0'
    ss.requires_arc = true
    ss.dependency 'curl', '7620.6703.0'
    ss.dependency 'openssl-dynamic', '111.6718.0'
    ss.source_files = 'include/crashreport/crashreport.h'
    ss.preserve_paths = 'libs/*.a'
    ss.libraries = 'crashreport','z','c++'
    ss.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/crashreportsdk/libs/'}
  end
  
  s.subspec 'dynamicSDK' do |ss|
    ss.platform     = :ios, '8.0'
    ss.ios.deployment_target = '8.0'
    ss.requires_arc = true
    ss.dependency 'openssl-dynamic'
    ss.ios.vendored_frameworks = 'libs/crashreportdynamic.framework'
    ss.xcconfig = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
  end
  
  s.subspec 'noSSLDynamic' do |ss|
    ss.platform     = :ios, '8.0'
    ss.ios.deployment_target = '8.0'
    ss.ios.vendored_frameworks = 'libs/crashreportdynamic.framework'
    ss.xcconfig = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
  end
  
  s.subspec 'static' do |sy|
    sy.platform     = :ios, '5.0'
    sy.ios.deployment_target = '5.0'
    sy.requires_arc = true
    sy.dependency 'curl', '7620.6703.0'
    sy.source_files = 'include/crashreport/crashreport.h'
    sy.preserve_paths = 'libs/*.a'
    sy.libraries = 'crashreport','z','c++'
    sy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/crashreportsdk/libs/'}
  end
  
  s.subspec 'staticCore' do |sy|
    sy.platform     = :ios, '5.0'
    sy.ios.deployment_target = '5.0'
    sy.requires_arc = true
    sy.source_files = 'include/crashreport/crashreport.h'
    sy.preserve_paths = 'libs/*.a'
    sy.libraries = 'crashreport','z','c++'
    sy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/crashreportsdk/libs/'}
  end  
  
end


