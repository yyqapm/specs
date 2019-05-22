Pod::Spec.new do |s|
	s.name         = "dwx265"
	s.version      = "2.0.3"
	s.summary      = "HEVC encoder producted by yy."
	s.license      = {:type => 'GNU GPL v2'}
	s.homepage     = "http://www.yy.com/"
	s.author       = { "zhangjunhai1" => "zhangjunhai1@yy.com" }
	s.source       = {:http => "http://repo.yypm.com/dwbuild/mobile/ios/dwx265/DWX265_2.0.3_REL/20171204-15-r1889978//dwx265.zip"}
	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/dwx265/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/dwx265/libs" }
	s.source_files		= 'include/**/*.h','include/*.h'
	s.header_mappings_dir = 'include'
	s.vendored_library = 'libs/libdwx265.a'
	s.library = 'dwx265'
end