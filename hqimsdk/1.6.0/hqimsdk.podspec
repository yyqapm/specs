Pod::Spec.new do |s|
	s.name 			= 'hqimsdk'
	s.version 		= '1.6.0'
	s.summary 		= 'hqim cross platform SDK for iOS'
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
	s.homepage 		= 'http://code.yy.com/jiangpaifeng/HqIMSdk/wikis/home'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2017 HuanQiu Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqimsdk/1.6.0/hqimsdk.zip"}
	s.source_files	= 'include/**/*.{h,hpp}'
	s.preserve_paths = 'libs/*.a'

    s.libraries = 'hqimsdk', 'c++', 'z'

    s.dependency 'hqwxbase', '~> 1.0.4'
s.dependency 'hqwxmetrics', '~> 1.0.1'
s.dependency 'protobuf', '330.6741.0'

	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
	s.xcconfig   = { 
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqimsdk/libs"'
	}
end
