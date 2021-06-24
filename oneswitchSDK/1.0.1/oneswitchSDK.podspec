Pod::Spec.new do |s|
	s.name         = 'oneswitchSDK'
	s.version      = '1.0.1'
	s.summary      = 'sdk demo'
	s.homepage     = 'https://git.duowan.com/apps/ci/oneswitchSDK-ios.git'
	s.author       = { 'yy' => 'jiangrenjie@yy.com' }
	s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/oneswitchSDK/1.0.1/oneswitchSDK.zip" }

	s.default_subspec = 'oneswitchSDK'

	s.subspec 'oneswitchSDK' do |s1|
		platform = :ios
	    s1.xcconfig   = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
		s1.source_files = 'include/oneswitchSDK/*.h'
	    s1.ios.vendored_frameworks = 'libs/oneswitchSDK.framework'
	end
	
	s.subspec 'oneSwitchSDKMac' do |s2|
		platform = :osx
        s2.xcconfig   = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        s2.source_files = 'include/oneswitchSDKMac/*.h'
        s2.osx.vendored_frameworks = 'libs/oneSwitchSDKMac.framework'
    end

	s.subspec 'oneswitchSDK_static' do |s3|
		platform = :ios
	    s3.xcconfig   = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/oneswitchSDK/include', 'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/oneswitchSDK/libs'}
		s3.source_files = 'include/oneswitchSDK/*.h'
	    s3.ios.vendored_libraries = 'libs/liboneswitchSDKStatic.a'
	end

	s.subspec 'oneSwitchSDKMac_static' do |s4|
		platform = :osx
        s4.xcconfig   = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/oneswitchSDK/include', 'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/oneswitchSDK/libs'}
        s4.source_files = 'include/oneswitchSDKMac/*.h'
        s4.osx.vendored_libraries = 'libs/liboneswitchSDKMacStatic.a'
	end

end