Pod::Spec.new do |s|
	s.name 			= 'gslbmac'
	s.version 		= '1.0.0'
	s.summary 		= 'smart dns for security'
	s.author 		= {'zhaoding' => 'zhaoding@yy.com'}
	s.homepage 		= 'https://aq.yy.com'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/gslbmac/1.0.0/gslbmac.zip"}
	s.source_files = 'include/*/.h'
	s.header_mappings_dir = 'libs/gslbsdk.framework/Headers'
	s.preserve_paths = 'libs/gslbsdk.framework'
	s.xcconfig   = {
	    'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/Frameworks',
	    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/gslbmac/libs"',
	    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/gslbmac/libs/gslbsdk.framework/Headers"' 
	}
	s.osx.vendored_frameworks = 'libs/gslbsdk.framework'
	
end