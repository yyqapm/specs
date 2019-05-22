Pod::Spec.new do |s|
	s.name         = "audiodsp"
	s.version      = "1.2.4-dev"
	s.summary      = "Audio Dsp for Audioengine"
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://www.yy.com/"

	s.author       = { "wangwenlong" => "wangwenlong@yy.com" }

	s.source       = {:http => "http://repo.yypm.com/dwbuild/mobile/ios/audiodsp/audiodsp-ios/20181217-167-r2344897//audiodsp.zip"}
	
	s.default_subspec = 'audiodsp'
	s.subspec 'audiodsp' do |ss|
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiodsp/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audiodsp/libs" }
	    ss.source_files		= 'include/**/*.h','include/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudio_dsp_static.a'
	    ss.library = 'audio_dsp_static'
    end
    
    s.subspec 'audiodspframework' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiodsp/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.source_files		= 'include/**/*.h','include/*.h'
    	sy.header_mappings_dir = 'include'
    	sy.ios.vendored_frameworks = 'libs/*.framework'
    end
end