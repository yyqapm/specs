Pod::Spec.new do |s|
	s.name         = 'yyunionsdk'
	s.version      = '0.20.218-dev'
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
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyunionsdk/0.20.218-dev/yyunionsdk.zip" }
	
	s.ios.frameworks = 'VideoToolbox', 'metalkit', 'metalperformanceshaders'
	s.ios.libraries = 'bz2', 'iconv', 'resolv'
	
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
	s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/yyunionsdk/libs/"}

	s.default_subspec = 'yyunionlivesdk'
	
	s.subspec 'yyunionlivesdk' do |ss|
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
	ss.dependency 'yyunionsdk/audioenginesdk'
	ss.dependency 'yyunionsdk/avtranssdk'
	ss.dependency 'yyunionsdk/deviceinfokit'
	ss.dependency 'yyunionsdk/dwx265'
	ss.dependency 'yyunionsdk/ffmpeg'
	ss.dependency 'yyunionsdk/gslb'
	ss.dependency 'yyunionsdk/hdstatsdk'
	ss.dependency 'yyunionsdk/ittiamhevc'
	ss.dependency 'yyunionsdk/orangefilter'
	ss.dependency 'yyunionsdk/udbauthsdk'
	ss.dependency 'yyunionsdk/venus'
	ss.dependency 'yyunionsdk/y2aplayer'
	ss.dependency 'yyunionsdk/yyabtestsdk'
	ss.dependency 'yyunionsdk/yyantilib'
	ss.dependency 'yyunionsdk/yycloudbs2sdk'
	ss.dependency 'yyunionsdk/yylivekit'
	ss.dependency 'yyunionsdk/yylivesdk'
	ss.dependency 'yyunionsdk/yymtfacedetector'
	ss.dependency 'yyunionsdk/yyopentracing'
	ss.dependency 'yyunionsdk/yysignalsdk'
	ss.dependency 'yyunionsdk/yyvideolib'
	ss.dependency 'yyunionsdk/PerfReportSDK'
	end
	
	
	s.subspec 'BaseApiSDK' do |ss|
	ss.vendored_libraries = 'libs/libBaseApiSDK.a'
	ss.resource = "include/sdks/BaseApiSDK/resource/*bundle"
	end
	
	s.subspec 'PerfReportSDK' do |ss|
	ss.vendored_libraries = 'libs/libPerfReportSDK.a'
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
	
	s.subspec 'audioenginesdk' do |ss|
	ss.vendored_libraries = 'include/sdks/audioenginesdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/audioenginesdk/libs/*.framework'
	ss.resource = "include/sdks/audioenginesdk/resource/*.bundle"
	end
	
	s.subspec 'avtranssdk' do |ss|
	ss.vendored_libraries = 'include/sdks/avtranssdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/avtranssdk/libs/*.framework'
	ss.resource = "include/sdks/avtranssdk/resource/*.bundle"
	end
	
	s.subspec 'deviceinfokit' do |ss|
	ss.vendored_libraries = 'include/sdks/deviceinfokit/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/deviceinfokit/libs/*.framework'
	ss.resource = "include/sdks/deviceinfokit/resource/*.bundle"
	end
	
	s.subspec 'dwx265' do |ss|
	ss.vendored_libraries = 'include/sdks/dwx265/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/dwx265/libs/*.framework'
	ss.resource = "include/sdks/dwx265/resource/*.bundle"
	end
	
	s.subspec 'ffmpeg' do |ss|
	ss.vendored_libraries = 'include/sdks/ffmpeg/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/ffmpeg/libs/*.framework'
	ss.resource = "include/sdks/ffmpeg/resource/*.bundle"
	end
	
	s.subspec 'gslb' do |ss|
	ss.vendored_libraries = 'include/sdks/gslb/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/gslb/libs/*.framework'
	ss.resource = "include/sdks/gslb/resource/*.bundle"
	end
	
	s.subspec 'hdstatsdk' do |ss|
	ss.vendored_libraries = 'include/sdks/hdstatsdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/hdstatsdk/libs/*.framework'
	ss.resource = "include/sdks/hdstatsdk/resource/*.bundle"
	end
	
	s.subspec 'ittiamhevc' do |ss|
	ss.vendored_libraries = 'include/sdks/ittiamhevc/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/ittiamhevc/libs/*.framework'
	ss.resource = "include/sdks/ittiamhevc/resource/*.bundle"
	end
	
	s.subspec 'orangefilter' do |ss|
	ss.vendored_libraries = 'include/sdks/orangefilter/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/orangefilter/libs/*.framework'
	ss.resource = "include/sdks/orangefilter/resource/*.bundle"
	end
	
	s.subspec 'udbauthsdk' do |ss|
	ss.vendored_libraries = 'include/sdks/udbauthsdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/udbauthsdk/libs/*.framework'
	ss.resource = "include/sdks/udbauthsdk/resource/*.bundle"
	end
	
	s.subspec 'venus' do |ss|
	ss.vendored_libraries = 'include/sdks/venus/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/venus/libs/*.framework'
	ss.resource = "include/sdks/venus/resource/*.bundle"
	end
	
	s.subspec 'y2aplayer' do |ss|
	ss.vendored_libraries = 'include/sdks/y2aplayer/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/y2aplayer/libs/*.framework'
	ss.resource = "include/sdks/y2aplayer/resource/*.bundle"
	end
	
	s.subspec 'yyabtestsdk' do |ss|
	ss.vendored_libraries = 'libs/libyyabtestsdk.a'
	end
	
	s.subspec 'yyantilib' do |ss|
	ss.vendored_libraries = 'include/sdks/yyantilib/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yyantilib/libs/*.framework'
	ss.resource = "include/sdks/yyantilib/resource/*.bundle"
	end
	
	s.subspec 'yycloudbs2sdk' do |ss|
	ss.vendored_libraries = 'include/sdks/yycloudbs2sdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yycloudbs2sdk/libs/*.framework'
	ss.resource = "include/sdks/yycloudbs2sdk/resource/*.bundle"
	end
	
	s.subspec 'yylivekit' do |ss|
	ss.vendored_libraries = 'include/sdks/yylivekit/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yylivekit/libs/*.framework'
	ss.resource = "include/sdks/yylivekit/resource/*.bundle"
	end
	
	s.subspec 'yylivesdk' do |ss|
	ss.vendored_libraries = 'include/sdks/yylivesdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yylivesdk/libs/*.framework'
	ss.resource = "include/sdks/yylivesdk/resource/*.bundle"
	end
	
	s.subspec 'yymtfacedetector' do |ss|
	ss.vendored_libraries = 'libs/libyymtfacedetector.a'
	end
	
	s.subspec 'yyopentracing' do |ss|
	ss.vendored_libraries = 'libs/libyyopentracing.a'
	end
	
	s.subspec 'yysignalsdk' do |ss|
	ss.vendored_libraries = 'include/sdks/yysignalsdk/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yysignalsdk/libs/*.framework'
	ss.resource = "include/sdks/yysignalsdk/resource/*.bundle"
	end
	
	s.subspec 'yyvideolib' do |ss|
	ss.vendored_libraries = 'include/sdks/yyvideolib/libs/*.a'
	ss.vendored_frameworks = 'include/sdks/yyvideolib/libs/*.framework'
	ss.resource = "include/sdks/yyvideolib/resource/*.bundle"
	end
	
	
	end
	