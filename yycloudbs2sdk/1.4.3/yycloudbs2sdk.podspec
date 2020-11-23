Pod::Spec.new do |s|
	s.name         = 'yycloudbs2sdk'
	s.version      = '1.4.3'
	s.summary      = 'yycloudbs2sdk'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2015 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yycloudbs2sdk/1.4.3/yycloudbs2sdk.zip" }
	s.platform     = :ios, '6.0'
  	s.ios.deployment_target = '6.0'
  	s.requires_arc = true
  	
  	s.default_subspec = 'yycloudbs2sdk'

  	s.subspec 'yycloudbs2sdk' do |ss|
	   ss.source_files = 'include/**/*.h'
  	   ss.preserve_paths = 'libs/*.a'
	   ss.libraries = 'yycloudbs2sdk', 'z', 'c++'
	   s.frameworks = 'SystemConfiguration', 'CoreTelephony'
	   s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yycloudbs2sdk/libs"' }
    end
    
  	s.subspec 'yycloudbs2dynamicsdk' do |sy|
	   sy.source_files = 'include/**/*.h'
  	   sy.preserve_paths = 'libs/*.a'
	   sy.libraries = 'yycloudbs2sdk', 'z', 'c++'
	   s.frameworks = 'SystemConfiguration', 'CoreTelephony'
	   s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yycloudbs2sdk/libs"' }
    end
end
