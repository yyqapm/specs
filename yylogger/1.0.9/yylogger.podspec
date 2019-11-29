Pod::Spec.new do |s|
	s.name         = 'yylogger'
	s.version      = '1.0.9'
	s.author        = { 'yy' => 'wangchenyang1@yy.com' }
	s.license      = {
      		:type => 'Copyright',
      		:text => <<-LICENSE
      		Copyright 2005-2016 YY Inc., All rights reserved.
      		LICENSE
    	}
	s.homepage   		= 'http://sunclouds.com'
	s.source          	= { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/yylogger/1.0.9/yylogger.zip" }
	s.summary      		= 'yylogger sdk.'
	s.platform        	= :ios, '8.0'
	s.source_files 		= 'include/**/*'
	s.vendored_libraries 	= 'libs/libyylogger.a'
	s.libraries   			= 'z', 'c++'
	s.xcconfig       	= { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yylogger/libs"' }
    s.header_mappings_dir 	= 'include'
	s.dependency 'yyservicesdk/yyservicesdk-dynamic', '~> 2.3.3'
s.dependency 'yysk', '1.1.2'
end
