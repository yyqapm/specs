Pod::Spec.new do |s|

	s.name         = "yydecav1"
	s.version      = "1.0.0-dev.14"
	s.summary      = "YY av1 decoder"
	s.homepage     = "https://git.yy.com/midwares/yyvideocore/yydecav1.git"
	s.license      = {:type => 'Apache License, version 2.0'}
	s.author       = { "wangyingqi" => "wangyingqi@yy.com" }

	s.source       = {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/yydecav1/1.0.0-dev.14/yydecav1.zip"}

	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yydecav1/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yydecav1/libs" }

	s.source_files		= 'include/**/*.h','include/*.h'
	s.header_mappings_dir = 'include'
	s.vendored_library = 'libs/libyydecav1.a'
	s.library = 'yydecav1'
end
