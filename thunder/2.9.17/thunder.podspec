Pod::Spec.new do |s|
	s.name         = 'thunder'
	s.version      = '2.9.17'
	s.summary      = 'thunder'
	s.homepage     = 'http://www.yy.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/thunder/2.9.17/thunder.zip" }
	
	s.default_subspec = 'thunderbolt'
	s.subspec 'thunderbolt' do |full|
		full.platform = :ios, '4.3'
		full.ios.deployment_target = '4.3'
		full.dependency 'argo', '~> 3.1.0'
full.dependency 'audioenginesdk', '10.15.201'
full.dependency 'ffmpeg/ffmpeg-small-ios', '1.0.0'
full.dependency 'gslb', '1.0.12'
full.dependency 'hydra/lite', '1.1.1'
full.dependency 'jolog', '1.0.1'
full.dependency 'libyuv', '1194.5004.0'
full.dependency 'transengine/transengine-full', '2.9.19'
full.dependency 'yyvideolib/yyvideolibsmallstatic_nobeauty', '100.7.99'
		full.requires_arc = true
		full.frameworks = 'VideoToolbox'
		full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
		full.source_files = 'include/thunderbolt/*.h'
		full.vendored_libraries = 'libs/libthunderbolt.a'
		full.library = 'thunderbolt'
	end
	
	s.subspec 'thunder' do |audio|
		audio.platform = :ios, '4.3'
		audio.ios.deployment_target = '4.3'
		audio.dependency 'argo', '~> 3.1.0'
audio.dependency 'audioenginesdk', '10.15.201'
audio.dependency 'gslb', '1.0.12'
audio.dependency 'hydra/lite', '1.1.1'
audio.dependency 'jolog', '1.0.1'
audio.dependency 'transengine/transengine-audio', '2.9.19'
		audio.requires_arc = true
		audio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
		audio.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
		audio.source_files = 'include/thunder/*.h'
		audio.vendored_libraries = 'libs/libthunder.a'
		audio.libraries = 'thunder'
    end

	s.subspec 'thunderboltdynamic' do |dyfull|
		dyfull.platform = :ios, '4.3'
		dyfull.ios.deployment_target = '4.3'
		
		dyfull.requires_arc = true
		dyfull.frameworks = 'VideoToolbox'
		dyfull.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
		dyfull.preserve_paths  = 'libs/thunderboltdynamic/thunderboltdynamic.framework'
		dyfull.ios.vendored_frameworks = 'libs/thunderboltdynamic.framework'
	end

	s.subspec 'thunderdynamic' do |dyaudio|
		dyaudio.platform = :ios, '4.3'
		dyaudio.ios.deployment_target = '4.3'
		
		dyaudio.requires_arc = true
		dyaudio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
		dyaudio.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
		dyaudio.preserve_paths  = 'libs/thunderdynamic/thunderdynamic.framework'
		dyaudio.ios.vendored_frameworks = 'libs/thunderdynamic.framework'
	end
end
