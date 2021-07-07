Pod::Spec.new do |s|
	s.name 			= 'hqwxbase'
	s.version 		= '1.0.7'
	s.summary 		= '环球网校跨平台基础库'
	s.homepage 		= 'https://git.duowan.com/hqedu/hqwx_live/sdk/hqwxbase'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
    s.header_dir = 'hqwxbase'
    s.header_mappings_dir = 'include/hqwxbase'
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqwxbase/1.0.7/hqwxbase.zip"}
	s.source_files	= 'include/**/*.{h,hpp}'
	s.preserve_paths = 'libs/*.a'
	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
    s.libraries = 'hqwxbase', 'c++'
    s.dependency 'curl', '~> 7620.6703.0'
s.dependency 'openssl', '~> 111.6721.0'
	s.xcconfig   = {
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqwxbase/libs"'
	}
end
