Pod::Spec.new do |s|
	s.name         = 'yylivesdk4cloudxxx'
	s.version      = '1.1.2-dev3'
	s.summary      = 'yylivesdk4cloud'
	s.homepage     = 'http://www.yy.com/'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/yylivesdk4cloud/1.1.2-dev3/yylivesdk4cloud.zip" }
	
	s.default_subspec = 'yylivesdk4cloud-full'
	s.subspec 'yylivesdk4cloud-full' do |full|
		full.platform = :ios, '4.3'
		full.ios.deployment_target = '4.3'
		full.dependency 'Masonry', '>= 1.1.0'
full.dependency 'audioenginesdk', '2.7.923'
full.dependency 'dwx265', '2.0.3'
full.dependency 'ffmpegframework/ffmpegframework', '1.0.2'
full.dependency 'libyuv', '1194.5004.0'
full.dependency 'openssl', '102106.6458.0'
full.dependency 'orangefilter', '3.5.4'
full.dependency 'stmobile', '1.4.1-dev'
full.dependency 'transsdk', '99.99.14-dev.23'
full.dependency 'yyvideolib/yyvideolibstatic', '3.2.0-dev.4'
		full.requires_arc = true
		full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivesdk4cloud/libs"' }
		full.source_files = 'include/yylivesdk4cloud/*.h'
		full.vendored_libraries = 'libs/libyylivesdk4cloud.a'
		full.library = 'yylivesdk4cloud'
	end
	
	s.subspec 'yylivesdk4cloud-audio' do |audio|
		audio.platform = :ios, '4.3'
		audio.ios.deployment_target = '4.3'
		audio.dependency 'audioenginesdk', '2.7.923'
audio.dependency 'openssl', '102106.6458.0'
audio.dependency 'transsdk', '99.99.14-dev.23'
		audio.requires_arc = true
		audio.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivesdk4cloud/libs"' }
		audio.source_files = 'include/yylivesdk4cloud-audio/*.h'
		audio.vendored_libraries = 'libs/libyylivesdk4cloud-audio.a'
		audio.libraries = 'yylivesdk4cloud-audio'
	end
end
