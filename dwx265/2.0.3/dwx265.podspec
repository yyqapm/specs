Pod::Spec.new do |s|
	s.name         = "dwx265"
	s.version      = "2.0.3"
	s.summary      = "HEVC encoder producted by yy."
	s.license      = {:type => 'GNU GPL v2'}
	s.homepage     = "http://www.yy.com/"
	s.author       = { "zhangjunhai1" => "zhangjunhai1@yy.com" }
	s.source       = {:http => "http://cirepo.bs2dl.yy.com/sdks/ios/dwx265/2.0.3/dwx265.zip"}
	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/dwx265/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/dwx265/libs" }
	s.header_mappings_dir = 'include'
	s.vendored_library = 'libs/libdwx265.a'
	s.library = 'dwx265'
end
