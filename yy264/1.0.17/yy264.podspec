Pod::Spec.new do |s|

	s.name         = "yy264"
	s.version      = "1.0.17"
	s.summary      = "YY H264 Encoder"
	s.homepage     = "https://git.yy.com/midwares/yyvideocore/yy264.git"
	s.license      = {:type => 'Apache License, version 2.0'}
	s.author       = { "wangyingqi" => "wangyingqi@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/yy264/1.0.17/yy264.zip"}

	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yy264/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yy264/libs" }

	s.source_files		= 'include/*.h'
	s.header_mappings_dir = 'include'
	s.vendored_library = 'libs/libx264.a'
	s.library = 'x264'
end
