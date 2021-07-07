Pod::Spec.new do |s|
	s.name 			= 'hqwxclassing'
	s.version 		= '1.2.2'
	s.summary 		= '环球网校跨平台课堂sdk'
	s.homepage 		= 'https://git.duowan.com/hqedu/hqwx_live/sdk/hqwxclassing'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
    s.header_dir = 'hqwxclassing'
    s.header_mappings_dir = 'include/hqwxclassing'
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqwxclassing/1.2.2/hqwxclassing.zip"}
	s.source_files	= 'include/**/*.{h,hpp}'
	s.preserve_paths = 'libs/*.a'
	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
    s.libraries = 'hqwxclassing', 'c++'
    s.dependency 'hqmars', '~> 1.3.1'
s.dependency 'hqwxbase', '~> 1.0.7'
s.dependency 'hqwxclassroom', '~> 1.1.0'
s.dependency 'hqwxmetrics', '~> 1.0.4'
s.dependency 'hqwxsignalling', '~> 1.0.7'
	s.xcconfig   = {
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqwxclassing/libs"'
	}
end
