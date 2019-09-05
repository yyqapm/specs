Pod::Spec.new do |s|
	s.name         = 'yylivesdk4cloud'
	s.version      = '2.3.0-dev.39992'
	s.summary      = 'yylivesdk4cloud'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/yylivesdk4cloud/2.3.0-dev.39992/yylivesdk4cloud.zip" }
	
	s.default_subspec = 'yylivesdk4cloud'
	s.subspec 'yylivesdk4cloud' do |full|
		full.platform = :ios, '4.3'
		full.ios.deployment_target = '4.3'
		full.dependency 'argo', '2.0.0'
full.dependency 'audioenginesdk', '10.8.0'
full.dependency 'avtranssdk', '1.7.88'
full.dependency 'dwx265', '2.0.3'
full.dependency 'ffmpeg/ffmpeg-332-ios', '332170717.6519.0'
full.dependency 'gslbsdki', '1.3.2'
full.dependency 'hdstatsdk/HiidoSDKDynamic', '3.2.32'
full.dependency 'ittiamhevc', '0500.6803.0'
full.dependency 'libyuv', '1194.5004.0'
full.dependency 'openssl-dynamic', '111.6718.0'
full.dependency 'yyservicesdk/yyservicesdk-dynamic', '2.2.12'
full.dependency 'yyvideolib/yyvideolibstatic_nobeauty', '100.1.1'
		full.requires_arc = true
		full.frameworks = 'VideoToolbox'
		full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivesdk4cloud/libs"' }
		full.source_files = 'include/yylivesdk4cloud/*.h'
		full.vendored_libraries = 'libs/libyylivesdk4cloud.a'
		full.library = 'yylivesdk4cloud'
	end

	s.subspec 'yylivesdk4clouddynamic' do |dy|
		dy.platform = :ios, '4.3'
		dy.ios.deployment_target = '4.3'
		dy.dependency 'hdstatsdk/HiidoSDKDynamic', '3.2.32'
dy.dependency 'yyaccesstranssdk', '1.2.1'
dy.dependency 'yyservicesdk/yyservicesdk-dynamic', '2.2.12'
		dy.requires_arc = true
		dy.frameworks = 'VideoToolbox'
		dy.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
		dy.preserve_paths  = 'libs/yylivesdk4clouddynamic/yylivesdk4clouddynamic.framework'
		dy.ios.vendored_frameworks = 'libs/yylivesdk4clouddynamic.framework'
	end

	s.subspec 'yylivesdk4clouddynamicaudio' do |ydaudio|
		ydaudio.platform = :ios, '4.3'
		ydaudio.ios.deployment_target = '4.3'
		
		ydaudio.requires_arc = true
		ydaudio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
		ydaudio.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
		ydaudio.preserve_paths  = 'libs/yylivesdk4clouddynamicaudio/yylivesdk4clouddynamicaudio.framework'
		ydaudio.ios.vendored_frameworks = 'libs/yylivesdk4clouddynamicaudio.framework'
	end
	
	s.subspec 'yylivesdk4cloud-audio' do |audio|
		audio.platform = :ios, '4.3'
		audio.ios.deployment_target = '4.3'
		audio.dependency 'argo', '2.0.0'
audio.dependency 'audioenginesdk', '10.8.0'
audio.dependency 'avtranssdk', '1.7.88'
audio.dependency 'gslbsdki', '1.3.2'
audio.dependency 'openssl-dynamic', '111.6718.0'
		audio.requires_arc = true
		audio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
		audio.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivesdk4cloud/libs"' }
		audio.source_files = 'include/yylivesdk4cloud-audio/*.h'
		audio.vendored_libraries = 'libs/libyylivesdk4cloud-audio.a'
		audio.libraries = 'yylivesdk4cloud-audio'
	end
end
