Pod::Spec.new do |s|
	s.name 			= 'hqwxmetrics'
	s.version 		= '1.0.4'
	s.summary 		= 'hqwxmetrics cross platform SDK for iOS'
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
	s.homepage 		= 'https://git.duowan.com/midwares/hqwx/hqwxmetrics/wikis/home'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2017 HuanQiu Inc., Allrights reserved.
		LICENSE
	}
    s.header_mappings_dir = 'include/hqwxmetrics'
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqwxmetrics/1.0.4/hqwxmetrics.zip"}
	s.source_files	= 'include/**/*.{h,hpp}'
	s.preserve_paths = 'libs/*.a'

    s.libraries = 'hqwxmetrics', 'c++'

    s.dependency 'curl', '~> 7620.6703.0'
s.dependency 'hqwxbase', '~> 1.0.7'
s.dependency 'openssl', '~> 111.6721.0'

	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
	s.xcconfig   = { 
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqwxmetrics/libs"'
	}
end
