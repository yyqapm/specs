Pod::Spec.new do |s|
	s.name 			= 'gslb'
	s.version 		= '1.0.11'
	s.summary 		= 'smart dns for security'
	s.author 		= {'zhaoding' => 'zhaoding@yy.com'}
	s.homepage 		= 'https://aq.yy.com'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => "http://cirepo.bs2dl.yy.com/sdks/ios/gslb/1.0.11/gslb.zip"}
	s.source_files	= 'include/**/*.h'
    s.frameworks = 'Foundation'
    s.ios.deployment_target	= '8.0'
	s.requires_arc	= true
	s.libraries = 'gslb','c++','resolv'
    s.dependency 'FMDB'
    #ipv6的原因，对这俩个库的版本做限制
    s.dependency 'CocoaAsyncSocket','>= 7.6.0'
    s.dependency 'AFNetworking/Serialization','>= 3.2.0'
    s.dependency 'AFNetworking/Reachability','>=3.2.0'
    s.dependency 'AFNetworking/NSURLSession','>=3.2.0'
    s.vendored_libraries = 'libs/libgslb.a' 
	s.xcconfig   = { 
	    'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/gslb/libs"
	}
end