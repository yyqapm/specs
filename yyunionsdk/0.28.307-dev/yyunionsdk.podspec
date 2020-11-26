Pod::Spec.new do |s|
	s.name         = 'yyunionsdk'
	s.version      = '0.28.307-dev'
	s.summary      = 'yyunionsdk'
	s.description  = 'YY SDK for MeiPai'
	s.homepage     = 'http://www.yy.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.platform     = :ios, "9.0"
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyunionsdk/0.28.307-dev/yyunionsdk.zip" }
	
	s.ios.frameworks = 'VideoToolbox', 'metalkit', 'metalperformanceshaders'
	s.ios.libraries = 'bz2', 'iconv', 'resolv'
	s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/yyunionsdk/"}

	s.dependency 'CHTCollectionViewWaterfallLayout','0.9.7'
	s.dependency 'CocoaAsyncSocket','7.6.3'
	s.dependency 'GVUserDefaults','1.0.2'
	s.dependency 'JSONModel','1.7.0'
	s.dependency 'libextobjc','0.4.1'
	s.dependency 'MarqueeLabel','3.1.3'
	s.dependency 'Protobuf', '3.6.1'
	s.dependency 'SZTextView', '1.1.5'
	s.dependency 'MDRadialProgress','1.1.1'
	s.dependency 'YYKeyboardManager', '1.0.1'
	s.dependency 'RaptureXML', '1.0.1'
	s.dependency 'opentracing','0.4.5'
	s.dependency 'FBRetainCycleDetector','0.1.3'
	s.dependency 'MJRefresh', '~>3.1.15.3'

	s.default_subspec = 'yyunionlivesdk'
	
	s.subspec 'yyunionlivesdk' do |ss|

	ss.dependency 'audioenginesdk', '3.7.100101'
ss.dependency 'avtranssdk', '1.7.185'
ss.dependency 'deviceinfokit', '1.1.2'
ss.dependency 'dwx265', '2.0.3'
ss.dependency 'ffmpeg/ffmpeg-332-ios', '332170717.6519.0'
ss.dependency 'gpuimagesdk', '0.2.18'
ss.dependency 'ittiamhevc', '0500.6803.0'
ss.dependency 'orangefilter/orangefilter-core', '4.4.10'
ss.dependency 'udbauthsdk', '3.11.8'
ss.dependency 'yyantilib/yyantilibstd', '2.2.8'
ss.dependency 'yylivesdk/yylivesdkmeipa', '7.16.73-dev.4'
ss.dependency 'yymobileopentracing/static', '0.0.1'
ss.dependency 'yysignalsdk/yysignalsdkcopy', '1.9.108'
ss.dependency 'yyvideolib/yyvideolibstatic', '3.8.55'
	
	ss.dependency 'yyunionsdk/BaseApiSDK'
	ss.dependency 'yyunionsdk/BlockNotification'
	ss.dependency 'yyunionsdk/channelProject'
	ss.dependency 'yyunionsdk/HWFunctional-YY'
	ss.dependency 'yyunionsdk/OpenSSL-YY'
	ss.dependency 'yyunionsdk/SwipeView-YY'
	ss.dependency 'yyunionsdk/YMLaboratory'
	ss.dependency 'yyunionsdk/yyunionloger'
	ss.dependency 'yyunionsdk/athlogger'

	ss.dependency 'yyunionsdk/YYKit-YY'
	ss.dependency 'yyunionsdk/YYQueueTaskManager'
	ss.dependency 'yyunionsdk/YYUnionAccount'
	ss.dependency 'yyunionsdk/athcontext'
	ss.dependency 'yyunionsdk/audiocodec'
	ss.dependency 'yyunionsdk/audiodsp'
	ss.dependency 'yyunionsdk/gslb'
	ss.dependency 'yyunionsdk/hdstatsdk'
	ss.dependency 'yyunionsdk/venus'
	ss.dependency 'yyunionsdk/y2aplayer'
	ss.dependency 'yyunionsdk/yyabtestsdk'
	ss.dependency 'yyunionsdk/yycloudbs2sdk'
	ss.dependency 'yyunionsdk/yylivekit'
	ss.dependency 'yyunionsdk/yymtfacedetector'
	ss.dependency 'yyunionsdk/PerfReportSDK'
	ss.dependency 'yyunionsdk/transvod'
	ss.dependency 'yyunionsdk/ybug'
	
	end
	s.subspec 'BaseApiSDK' do |ss|
	ss.vendored_libraries = 'libs/libBaseApiSDK.a'
	ss.resource = "include/sdks/BaseApiSDK/resource/*bundle"
	end
	
	s.subspec 'BlockNotification' do |ss|
	ss.vendored_libraries = 'libs/libBlockNotification.a'
	end
		
	s.subspec 'channelProject' do |ss|
	ss.vendored_libraries = 'libs/libChannelProject.a'
	ss.resource = "include/sdks/ChannelProject/resource/*.bundle",'include/include/*.{storyboard,xib}'
	ss.source_files = 'include/include/*.{h,m}','include/sdks/athcontext/libs/ATHContext.framework/**/*.h'
	end
		
	s.subspec 'HWFunctional-YY' do |ss|
	ss.vendored_libraries = 'libs/libHWFunctional-YY.a'
	end
		
	s.subspec 'OpenSSL-YY' do |ss|
	ss.vendored_libraries = 'libs/libOpenSSL-YY.a'
	end
	
	s.subspec 'SwipeView-YY' do |ss|
	ss.vendored_libraries = 'libs/libSwipeView-YY.a'
	end
	
	s.subspec 'YMLaboratory' do |ss|
	ss.vendored_libraries = 'libs/libYMLaboratory.a'
	ss.resource = "include/sdks/YMLaboratory/resource/*.bundle"
	end
	
	s.subspec 'yyunionloger' do |ss|
	ss.vendored_libraries = 'libs/libyyunionloger.a'
	ss.resource = "include/sdks/yyunionloger/resource/*.bundle"
	end
	
	s.subspec 'athlogger' do |ss|
	ss.vendored_libraries = 'libs/libathlogger.a'
	ss.resource = "include/sdks/athlogger/resource/*.bundle"
	end
	
	s.subspec 'YYKit-YY' do |ss|
	ss.vendored_libraries = 'libs/libYYKit-YY.a'
	end
	
	s.subspec 'YYQueueTaskManager' do |ss|
	ss.vendored_libraries = 'libs/libYYQueueTaskManager.a'
	end
	
	s.subspec 'YYUnionAccount' do |ss|
	ss.vendored_libraries = 'libs/libYYUnionAccount.a'
	end
	
	s.subspec 'ybug' do |ss|
	ss.vendored_libraries = 'include/sdks/ybug/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/ybug/libs/*.framework'
	ss.resource = "include/sdks/ybug/resource/*.bundle"
	end
	
	s.subspec 'yylivekit' do |ss|
	ss.vendored_libraries = 'include/sdks/yylivekit/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yylivekit/libs/*.framework'
	ss.resource = "include/sdks/yylivekit/resource/*.bundle"
	end
		

	s.subspec 'venus' do |ss|
	ss.vendored_libraries = 'include/sdks/venus/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/venus/libs/*.framework'
	ss.resource = "include/sdks/venus/resource/*.bundle"
	end

	s.subspec 'yymtfacedetector' do |ss|
	ss.vendored_libraries = 'libs/libyymtfacedetector.a'
	end
	
	s.subspec 'transvod' do |ss|
	ss.vendored_libraries = 'include/sdks/transvod/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/transvod/libs/*.framework'
	ss.resource = "include/sdks/transvod/resource/*.bundle"
	end
		
	s.subspec 'y2aplayer' do |ss|
	ss.vendored_libraries = 'include/sdks/y2aplayer/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/y2aplayer/libs/*.framework'
	ss.resource = "include/sdks/y2aplayer/resource/*.bundle"
	end

	s.subspec 'yyabtestsdk' do |ss|
	ss.vendored_libraries = 'libs/libyyabtestsdk.a'
	end

	s.subspec 'yysignalsdk' do |ss|
	ss.vendored_libraries = 'include/sdks/yysignalsdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yysignalsdk/libs/*.framework'
	ss.resource = "include/sdks/yysignalsdk/resource/*.bundle"
	end

	s.subspec 'gslb' do |ss|
	ss.vendored_libraries = 'include/sdks/gslb/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/gslb/libs/*.framework'
	ss.resource = "include/sdks/gslb/resource/*.bundle"
	end

	s.subspec 'athcontext' do |ss|
	ss.vendored_libraries = 'include/sdks/athcontext/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/athcontext/libs/*.framework'
	ss.resource = "include/sdks/athcontext/resource/*.bundle"
	end
		
	s.subspec 'audiocodec' do |ss|
	ss.vendored_libraries = 'include/sdks/audiocodec/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/audiocodec/libs/*.framework'
	ss.resource = "include/sdks/audiocodec/resource/*.bundle"
	end
		
	s.subspec 'audiodsp' do |ss|
	ss.vendored_libraries = 'include/sdks/audiodsp/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/audiodsp/libs/*.framework'
	ss.resource = "include/sdks/audiodsp/resource/*.bundle"
	end
		
		
	s.subspec 'PerfReportSDK' do |ss|
	ss.vendored_libraries = 'libs/libPerfReportSDK.a'
	end
			
	s.subspec 'hdstatsdk' do |ss|
	ss.vendored_libraries = 'include/sdks/hdstatsdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/hdstatsdk/libs/*.framework'
	ss.resource = "include/sdks/hdstatsdk/resource/*.bundle"
	end
	
	s.subspec 'yycloudbs2sdk' do |ss|
	ss.vendored_libraries = 'include/sdks/yycloudbs2sdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yycloudbs2sdk/libs/*.framework'
	ss.resource = "include/sdks/yycloudbs2sdk/resource/*.bundle"
	end
end
	