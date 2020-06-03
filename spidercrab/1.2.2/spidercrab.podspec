Pod::Spec.new do |s|
  s.name         = 'spidercrab'
  s.version      = '1.2.2'
  s.summary      = 'SpiderCrab'
  s.homepage     = 'http://sunclouds.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2019 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'chengang2@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/spidercrab/1.2.2/spidercrab.zip" }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
 
  s.default_subspec = 'spidercrab'
  s.subspec 'spidercrab' do |sc| 
    sc.ios.vendored_frameworks      = 'libs/SpiderCrab.framework'
    sc.frameworks 				    = 'Foundation'
    sc.libraries   				    = 'z', 'c++'
    sc.xcconfig 				    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SpiderCrab/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/SpiderCrab/libs/SpiderCrab.framework/Headers"' }
    sc.dependency 'AliyunOSSiOS', '>= 2.10.7'
sc.dependency 'CocoaLumberjack', '>= 3.0.0'
sc.dependency 'SSZipArchive', '~> 1.8.1'
sc.dependency 'yyservicesdk', '>= 2.2.22'
  end
  
  s.subspec 'spidercrab-dynamic' do |scd| 
    scd.ios.vendored_frameworks     = 'libs/SpiderCrab_dynamic.framework'
    scd.frameworks 				    = 'Foundation'
    scd.libraries   			    = 'z', 'c++'
    scd.xcconfig 				    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SpiderCrab/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/SpiderCrab/libs/SpiderCrab_dynamic.framework/Headers"' }
    
  end

  s.subspec 'spidercrab_macOS' do |sc_macOS| 
    sc_macOS.osx.vendored_frameworks    = 'libs/SpiderCrab_macOS.framework'
    sc_macOS.frameworks 			    = 'Foundation'
    sc_macOS.libraries   			    = 'z', 'c++'
    sc_macOS.xcconfig 				    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SpiderCrab/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/SpiderCrab/libs/SpiderCrab_macOS.framework/Headers"' }
    sc_macOS.dependency 'AliyunOSSiOS', '>= 2.10.7'
sc_macOS.dependency 'CocoaLumberjack', '>= 3.0.0'
sc_macOS.dependency 'SSZipArchive', '~> 1.8.1'
sc_macOS.dependency 'yyservicesdk/yyservicesdkmaclib', '>= 2.3.2'
  end

end
