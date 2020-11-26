Pod::Spec.new do |s|
	s.name         = 'yylivekit'
	s.version      = '7.19.41'
	s.summary      = 'yylivekit'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'zhanglonghua@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yylivekit/7.19.41/yylivekit.zip" }
	s.platform     = :ios, '7.0'
  	s.ios.deployment_target = '7.0'
  	s.requires_arc = true

	s.default_subspec = 'static'
	s.subspec 'static' do |ss|
		ss.resource     = 'resource/**/*.bundle'
		ss.vendored_frameworks = 'libs/YYLiveKit.framework'
		ss.frameworks = "UIKit", "CoreVideo"
		ss.libraries   = 'z', 'c++'
		ss.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivekit/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/yylivekit/libs/YYLiveKit.framework/Headers" }
	end

	s.subspec 'dynamic' do |sd|
		sd.resource     = 'resource/**/*.bundle'
		sd.vendored_frameworks = 'libs/YYLiveKit.framework'
		sd.frameworks = "UIKit", "CoreVideo"
		sd.libraries   = 'z', 'c++'
		sd.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivekit/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/yylivekit/libs/YYLiveKit.framework/Headers" }
	end

	s.subspec 'dynamiclib' do |se|
		se.resource     = 'resource/**/*.bundle'
		se.vendored_frameworks = 'libs/YYLiveKit.framework'
		se.frameworks = "UIKit", "CoreVideo"
		se.libraries   = 'z', 'c++'
		se.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
	end

	s.subspec 'staiticlib' do |sf|
		sf.resource     = 'resource/**/*.bundle'
		sf.source_files = 'include/YYLiveKitStatic/*.h'
		sf.vendored_libraries = 'libs/libYYLiveKitStatic.a'
		sf.frameworks = "UIKit", "CoreVideo"
		sf.libraries   = 'z', 'c++'
		sf.library   = 'YYLiveKitStatic'
		sf.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yylivekit/libs"' }
	end

end


