Pod::Spec.new do |s|
	s.name         = "audiocodec"
	s.version      = "10.1.43000-dev.1"
	s.summary      = "Audio Codec for Audioengine"
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://sunclouds.com"

	s.author       = { "zhangjingzhou" => "zhangjingzhou@yy.com" }

	s.source       = {:http => "http://cirepo.bs2dl.yy.com/sdks/ios/audiocodec/10.1.43000-dev.1/audiocodec.zip"}

	s.default_subspec = 'audiocodec'
	s.subspec 'audiocodec' do |ss|
	    ss.dependency 'AFNetworking', '3.2.1'
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiocodec/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audiocodec/libs" }
	    ss.source_files		= 'include/**/*.h','include/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudiocodec_static.a'
	    ss.library = 'audiocodec_static'
	end

	s.subspec 'audiocodec_mac' do |ssm|
	    ssm.dependency 'AFNetworking', '3.2.1'
	    ssm.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiocodec/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audiocodec/libs" }
	    ssm.source_files		= 'include/**/*.h','include/*.h'
	    ssm.header_mappings_dir = 'include'
	    ssm.vendored_library = 'libs/libaudiocodec_static-macOS.a'
	    ssm.library = 'audiocodec_static-macOS'
	end

	s.subspec 'audiocodecframework' do |sy|
		sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiocodec/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
		sy.source_files		= 'include/**/*.h','include/*.h'
		sy.header_mappings_dir = 'include'
		sy.ios.vendored_frameworks = 'libs/*.framework'
	end
end
