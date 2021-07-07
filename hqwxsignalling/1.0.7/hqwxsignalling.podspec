Pod::Spec.new do |s|
	s.name 			= 'hqwxsignalling'
	s.version 		= '1.0.7'
	s.summary 		= '环球网校跨平台信令sdk'
	s.homepage 		= 'https://git.duowan.com/hqedu/hqwx_live/sdk/hqwxsignalling'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
    s.header_dir = 'hqwxsignalling'
    s.header_mappings_dir = 'include/hqwxsignalling'
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqwxsignalling/1.0.7/hqwxsignalling.zip"}
	s.source_files	= 'include/**/*.{h,hpp}'
	s.preserve_paths = 'libs/*.a'
	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
    s.libraries = 'hqwxsignalling', 'c++'
    s.dependency 'hqmars', '~> 1.3.1'
s.dependency 'hqwxbase', '~> 1.0.4'
s.dependency 'hqwxmetrics', '~> 1.0.1'
	s.xcconfig   = {
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqwxsignalling/libs"'
	}
end
