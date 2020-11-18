Pod::Spec.new do |s|
	s.name         = 'deviceinfokit'
	s.version      = '1.1.2'
	s.summary      = 'deviceinfokit'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2016 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'xiaoxueyuan' => 'xiaoxueyuan@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/deviceinfokit/1.1.2/deviceinfokit.zip" }
	s.platform     = :ios, '7.0'
  	s.ios.deployment_target = '7.0'
  	s.requires_arc = true
  	s.source_files = 'include/**/*.h'
  	s.preserve_paths = 'libs/*.a'
	s.library = 'deviceinfokit'
	s.frameworks = 'Foundation', 'UIKit' 
	s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/deviceinfokit/libs"' }
end


