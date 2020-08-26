Pod::Spec.new do |s|
	s.name         = "audioenginesdk"
	s.version      = "10.9.0-dev.8"
	s.summary      = "Audio processing methods for yysdk."
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://sunclouds.com"

	s.author       = { "huyifeng" => "huyifeng@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/audioenginesdk/10.9.0-dev.8/audioenginesdk.zip"}
	
	s.default_subspec = 'audioenginesdk'
	s.subspec 'audioenginesdk' do |ss|
		ss.dependency 'audiocodec', '10.1.39'
ss.dependency 'audiodsp', '1.2.9'
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audioenginesdk/libs" }
	    ss.source_files		= 'include/**/*.h','include/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudio_static.a'
	    ss.library = 'audio_static'
    end
    
    s.subspec 'yyaudiodynamicsdk' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.source_files		= 'include/**/*.h','include/*.h'
    	sy.header_mappings_dir = 'include'
    	sy.ios.vendored_frameworks = 'libs/audio_wrapper.framework'
    end

	s.subspec 'audioenginesdk_mac' do |ss|
		ss.dependency 'audiocodec', '10.1.39'
ss.dependency 'audiodsp', '1.2.9'
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audioenginesdk/libs" }
	    ss.source_files		= 'include/**/*.h','include/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudio_static-macOS.a'
	    ss.library = 'audio_static-macOS'
    end
    
    s.subspec 'yyaudiodynamicsdk_mac' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.source_files		= 'include/**/*.h','include/*.h'
    	sy.header_mappings_dir = 'include'
    	sy.osx.vendored_frameworks = 'libs/audio_wrapper_macOS.framework'
    end
end
