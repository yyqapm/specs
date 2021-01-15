Pod::Spec.new do |s|

	s.name         = "yydec265"
	s.version      = "1.0.17"
	s.summary      = "YY H265 decoder"
	s.homepage     = "https://git.yy.com/midwares/yyvideocore/yydec265.git"
	s.license      = {:type => 'Apache License, version 2.0'}
	s.author       = { "zhangjunhai1" => "zhangjunhai1@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/yydec265/1.0.17/yydec265.zip"}

	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yydec265/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yydec265/libs" }

	s.source_files		= 'include/*.h'
	s.header_mappings_dir = 'include'
	s.vendored_library = 'libs/libyydec265.a'
	s.library = 'yydec265'
end