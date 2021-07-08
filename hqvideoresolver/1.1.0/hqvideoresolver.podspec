Pod::Spec.new do |s|
	s.name 			= 'hqvideoresolver'
	s.version 		= '1.1.0'
	s.summary 		= 'hqvideo resolver cross platform SDK for iOS'
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
	s.homepage 		= 'http://www.joyyinc.com'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqvideoresolver/1.1.0/hqvideoresolver.zip"}
	s.source_files	= 'include/*.h'
	s.preserve_paths = 'libs/*.a'
    s.resources = 'resource/*'

    s.libraries = 'hqvideoresolver', 'c++', 'z'
    
    s.dependency 'hqwxbase', '~> 1.0.0'

	s.ios.deployment_target	= '8.0'
	s.requires_arc	= true
	s.xcconfig   = { 
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqvideoresolver/libs"'
	}
end
