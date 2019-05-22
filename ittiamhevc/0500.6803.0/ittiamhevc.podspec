Pod::Spec.new do |s|

	s.name         = "ittiamhevc"
	s.version      = "0500.6803.0"
	s.summary      = "Open ittiamhevc library for yysdk."
	s.homepage     = "https://android.googlesource.com/platform/external/libhevc"
	s.license      = {:type => 'Apache License, version 2.0'}
	s.author       = { "zhangjunhai1" => "zhangjunhai1@yy.com" }

	s.source       = {:http => "http://repo.yypm.com/dwintegrate/dw3rdios/ittiamhevc/0500.6803.0/ittiamhevc.zip"}

	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ittiamhevc/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/ittiamhevc/libs" }

	s.source_files		= 'include/*.h'
	s.header_mappings_dir = 'include'
	s.vendored_library = 'libs/libittiamhevc.a'
	s.library = 'ittiamhevc'
end