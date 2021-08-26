Pod::Spec.new do |s|
	s.name 			= 'hqwxedu'
	s.version 		= '2.1.7'
	s.summary 		= 'hqwxedu live class sdk'
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
	s.homepage 		= 'https://git.duowan.com/apps/hqwx/hqwxedudemo-ios/wikis/home'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2019 HuanQiu Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqwxedu/2.1.7/hqwxedu.zip"}
	s.source_files	= 'include/*.h'
	s.preserve_paths = 'libs/*.a'
    s.resources = 'resource/*'

    s.libraries = 'hqwxedu', 'c++', 'z', 'resolv'
    s.frameworks = 'QuartzCore', 'UIKit', 'CoreText', 'CoreTelephony', 'VideoToolbox', 'SystemConfiguration', 'WebKit', 'Photos', 'MobileCoreServices', 'AssetsLibrary', 'CoreMotion', 'GLKit', 'Security'

    s.dependency 'AFNetworking/NSURLSession', '~> 3.0'
s.dependency 'AFNetworking/Reachability', '~> 3.0'
s.dependency 'AFNetworking/Serialization', '~> 3.0'
s.dependency 'AgoraRtcEngine_iOS', '2.9.0.104'
s.dependency 'FLAnimatedImage', '~> 1.0'
s.dependency 'GDataXML-HTML', '~> 1.4.0'
s.dependency 'HQWX_BIGOTest', '~> 0.0.17'
s.dependency 'LLSimpleCamera', '~> 4.1'
s.dependency 'MBProgressHUD', '~> 0.9'
s.dependency 'Masonry', '~> 1.1.0'
s.dependency 'SSZipArchive', '~> 1.8.1'
s.dependency 'YYText', '~> 1.0.0'
s.dependency 'hqimsdk', '~> 1.6.0'
s.dependency 'hqwxbase', '1.0.7'
s.dependency 'hqwxclassing', '1.2.2'
s.dependency 'hqwxclassroom', '~> 1.1.0'
s.dependency 'hqwxinteractive', '~> 1.3.0'
s.dependency 'hqwxmetrics', '1.0.4'
s.dependency 'hqwxsignalling', '~> 1.0.7'
s.dependency 'hqwxwhiteboard', '~> 1.0.11'
s.dependency 'thunder/thunderboltdynamic', '3.0.22'

	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
	s.xcconfig   = {
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqwxedu/libs"'
	}
end
