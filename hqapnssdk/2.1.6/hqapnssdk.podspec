Pod::Spec.new do |s|
	s.name 			= 'hqapnssdk'
	s.version 		= '2.1.6'
	s.summary 		= 'hqapnssdk is APNS push SDK for iOS'
	s.author 		= {'xiefufeng' => 'xiefufeng@hqwx.com'}
	s.homepage 		= ''
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2017 HuanQiu Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqapnssdk/2.1.6/hqapnssdk.zip"}
	s.source_files	= 'include/*.h'
	s.preserve_paths = 'libs/*.a'

    s.libraries = 'hqapnssdk', 'stdc++', 'z'

    

	s.ios.deployment_target	= '7.0'
	s.requires_arc	= true
	s.xcconfig   = { 
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqapnssdk/libs"'
	}
end
