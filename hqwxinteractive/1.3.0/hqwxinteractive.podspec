Pod::Spec.new do |s|
	s.name 			= 'hqwxinteractive'
	s.version 		= '1.3.0'
	s.summary 		= '环球网校跨平台课堂互动sdk'
	s.homepage 		= 'https://git.duowan.com/hqedu/hqwx_live/sdk/hqwxinteractive'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
    s.header_dir = 'hqwxinteractive'
    s.header_mappings_dir = 'include/hqwxinteractive'
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqwxinteractive/1.3.0/hqwxinteractive.zip"}
	s.source_files	= 'include/**/*.{h,hpp}'
	s.preserve_paths = 'libs/*.a'
	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
    s.libraries = 'hqwxinteractive', 'c++'
    s.dependency 'hqmars', '~> 1.3.1'
s.dependency 'hqwxbase', '~> 1.0.4'
s.dependency 'hqwxclassroom', '~> 1.1.0'
s.dependency 'hqwxmetrics', '~> 1.0.1'
s.dependency 'hqwxsignalling', '~> 1.0.7'
	s.xcconfig   = {
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqwxinteractive/libs"'
	}
end
