Pod::Spec.new do |s|
	s.name         = 'argo'
	s.version      = '3.0.0'
	s.author        = { 'yy' => 'liyuhua@yy.com' }
	s.license      = {
      		:type => 'Copyright',
      		:text => <<-LICENSE
      		Copyright 2005-2016 YY Inc., All rights reserved.
      		LICENSE
    	}
	s.homepage   		= 'http://sunclouds.com'
	s.source          	= { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/argo/3.0.0/argo.zip" }
	s.summary      		= 'argo sdk.'
	s.platform        	= :ios, '8.0'
	s.source_files 		= 'include/**/*'
	s.vendored_libraries 	= 'libs/libargo.a'
	s.xcconfig       	= { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/argo/libs"' }
    	s.header_mappings_dir 	= 'include'
	
end
