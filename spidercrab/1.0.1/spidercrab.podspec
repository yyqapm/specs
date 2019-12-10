Pod::Spec.new do |s|
  s.name         = 'spidercrab'
  s.version      = '1.0.1'
  s.summary      = 'SpiderCrab'
  s.homepage     = 'http://sunclouds.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2019 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'chengang2@yy.com' }
  s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/spidercrab/1.0.1/spidercrab.zip" }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  
  s.subspec 'SpiderCrab' do |sc| 
    sc.vendored_frameworks      = 'libs/SpiderCrab.framework'
    sc.frameworks 		        = 'Foundation'
    sc.libraries   			    = 'z', 'c++'
    sc.xcconfig 			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SpiderCrab/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/SpiderCrab/libs/SpiderCrab.framework/Headers"' }
    sc.dependency 'CocoaLumberjack', '~> 3.0.0'
  end

end
