Pod::Spec.new do |s|
	s.name         = 'yylivesdk'
	s.version      = '7.16.73'
	s.summary      = 'yylivesdk'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yylivesdk/7.16.73/yylivesdk.zip" }
	
	s.default_subspec = 'yylivesdk'
	s.subspec 'yylivesdk' do |ss|
		ss.platform     = :ios, '4.3'
        ss.ios.deployment_target = '4.3'
        ss.dependency 'ZipArchive', '1.4.0'
ss.dependency 'audioenginesdk', '3.7.100101'
ss.dependency 'avtranssdk', '1.7.185'
ss.dependency 'deviceinfokit', '1.1.2'
ss.dependency 'dwx265', '2.0.3'
ss.dependency 'ffmpeg/ffmpeg-332-ios', '332170717.6519.0'
ss.dependency 'gpuimagesdk', '0.2.18'
ss.dependency 'ittiamhevc', '0500.6803.0'
ss.dependency 'libyuv', '1194.5004.0'
ss.dependency 'orangefilter/orangefilter-core', '4.4.10'
ss.dependency 'udbauthsdk', '3.11.8'
ss.dependency 'yyantilib/yyantilibstd', '2.2.8'
ss.dependency 'yymobileopentracing/static', '0.0.1'
ss.dependency 'yysignalsdk/yysignalsdkcopy', '1.9.108'
ss.dependency 'yyvideolib/yyvideolibstatic', '3.8.55'
        ss.requires_arc = true
	    ss.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivesdk/libs"' }
	    ss.source_files = 'include/yyprotosdkstatic/*.h'
	    ss.vendored_libraries = 'libs/libyyprotosdkstatic.a'
	    ss.library = 'yyprotosdkstatic'
	end
    s.subspec 'yylivesdkmeipa' do |st|
        st.platform     = :ios, '4.3'
        st.ios.deployment_target = '4.3'
        st.requires_arc = true
        st.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivesdk/libs"' }
        st.source_files = 'include/yyprotosdkstatic/*.h'
        st.vendored_libraries = 'libs/libyyprotosdkstatic.a'
        st.library = 'yyprotosdkstatic'
    end
	
	s.subspec 'imindependentsdk' do |sy|
		sy.platform     = :ios, '4.3'
        sy.ios.deployment_target = '4.3'
	    sy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyprotosdk/libs"' }
	    sy.source_files = 'include/**/*.h'
	    sy.vendored_libraries = 'libs/libnetmod.a','libs/libimsdk.a'
	    sy.libraries = 'netmod', 'imsdk'
	end

	s.subspec 'yyliveaudiosdk' do |sz|
		sz.platform     = :ios, '4.3'
        sz.ios.deployment_target = '4.3'
        sz.dependency 'avtranssdk', '1.7.185'
        sz.requires_arc = true
	    sz.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyprotosdk/libs"' }
	    sz.source_files = 'include/**/*.h'
	    sz.vendored_libraries = 'libs/libyyprotoaudiosdk.a','libs/libimsdk.a'
	    sz.libraries = 'yyprotoaudiosdk', 'imsdk'
	end
	
	s.subspec 'yylivedynamicsdk' do |sw|
        sw.dependency 'audioenginesdk', '3.7.100101'
sw.dependency 'ffmpeg/ffmpeg-332-ios', '332170717.6519.0'
sw.dependency 'orangefilter/orangefilter-core', '4.4.10'
sw.dependency 'udbauthsdk', '3.11.8'
sw.dependency 'yyantilib/yyantilibstd', '2.2.8'
sw.dependency 'yysignalsdk/yysignalsdkcopy', '1.9.108'
sw.dependency 'yyvideolib/yyvideolibstatic', '3.8.55'
        sw.requires_arc = true
	    sw.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
	    sw.source_files = 'include/**/*.h'
	    sw.ios.vendored_frameworks = 'libs/yyprotosdk.framework'
	end

	s.subspec 'yylivedyaudiosdk' do |sx|
        sx.dependency 'audioenginesdk', '3.7.100101'
sx.dependency 'ffmpeg/ffmpeg-332-ios', '332170717.6519.0'
sx.dependency 'udbauthsdk', '3.11.8'
sx.dependency 'yyantilib/yyantilibstd', '2.2.8'
sx.dependency 'yysignalsdk/yysignalsdkcopy', '1.9.108'
        sx.requires_arc = true
	    sx.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
	    sx.source_files = 'include/**/*.h'
	    sx.ios.vendored_frameworks = 'libs/yyprotoaudiosdk.framework'
	end
end
