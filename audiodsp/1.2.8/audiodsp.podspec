Pod::Spec.new do |s|
	s.name         = "audiodsp"
	s.version      = "1.2.8"
	s.summary      = "Audio Dsp for Audioengine"
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://sunclouds.com"

	s.author       = { "wangwenlong" => "wangwenlong@yy.com" }

	s.source       = {:http => "http://cirepo.bs2dl.yy.com/sdks/ios/audiodsp/1.2.8/audiodsp.zip"}
	
	s.default_subspec = 'audiodsp'
	s.subspec 'audiodsp' do |ss|
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiodsp/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audiodsp/libs" }
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudio_dsp_static-iOS.a'
	    ss.library = 'audio_dsp_static-iOS'
    end

	s.subspec 'audiodsp_mac' do |ss|
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiodsp/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audiodsp/libs" }
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudio_dsp_static-macOS.a'
	    ss.library = 'audio_dsp_static-macOS'
    end
    
    s.subspec 'audiodspframework' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiodsp/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.header_mappings_dir = 'include'
    	sy.ios.vendored_frameworks = 'libs/*.framework'
    end
end
