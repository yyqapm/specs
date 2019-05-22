Pod::Spec.new do |s|
	s.name         = 'argo'
	s.version      = '2.0.0'
	s.author        = { 'yy' => 'liyuhua@yy.com' }
	s.license      = {
      		:type => 'Copyright',
      		:text => <<-LICENSE
      		Copyright 2005-2016 YY Inc., All rights reserved.
      		LICENSE
    	}
	s.homepage   		= 'http://www.yy.com/'
	s.source          	= { :http => "http://repo.yypm.com/dwbuild/mobile/ios/argo/ARGO_2.0.0_REL/20190227-74-r65ba17c9a80c73b63efc045b16e01eea8ffcedc1//argo.zip" }
	s.summary      		= 'argo sdk.'
	s.platform        	= :ios, '8.0'
	s.source_files 		= 'include/**/*'
	s.vendored_libraries 	= 'libs/libargo.a'
	s.xcconfig       	= { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/argo/libs"' }
    	s.header_mappings_dir 	= 'include'
	
end
