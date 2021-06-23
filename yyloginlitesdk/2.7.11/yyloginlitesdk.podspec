Pod::Spec.new do |s|
	s.name         = 'yyloginlitesdk'
	s.version      = '2.7.11'
	s.summary      = 'yyloginlitesdk'
	s.homepage     = 'http://www.joyyinc.com/'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2017 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/yyloginlitesdk/2.7.11/yyloginlitesdk.zip" }

	s.default_subspec = 'yyloginlitesdk'

	s.subspec 'yyloginlitecore' do |sc|
		sc.dependency 'Protobuf'
		sc.dependency 'yyantilib/yyantilibstd'
		sc.dependency 'deviceinfokit'
    	sc.requires_arc = true
	    sc.xcconfig   = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
		sc.frameworks = 'SystemConfiguration'
		sc.libraries = 'c++','z'
		sc.source_files = 'include/**/*.h'
	    sc.ios.vendored_frameworks = 'libs/yyloginlitecore.framework'
	end

	s.subspec 'yyloginliteservicecore' do |ssc|
    	ssc.dependency 'yyloginlitesdk/yyloginlitecore'
    	ssc.requires_arc = true
	    ssc.xcconfig   = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
		ssc.frameworks = 'SystemConfiguration'
		ssc.libraries = 'c++','z'
		ssc.source_files = 'include/**/*.h'
	    ssc.ios.vendored_frameworks = 'libs/yyloginliteservicecore.framework'
	end

	s.subspec 'yyloginlitesdk' do |sw|
    	sw.dependency 'yyloginlitesdk/yyloginliteservicecore'
    	sw.requires_arc = true
	  	sw.xcconfig   = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
		sw.frameworks = 'SystemConfiguration'
		sw.libraries = 'c++','z'
		sw.source_files = 'include/**/*.h'
	  	sw.ios.vendored_frameworks = 'libs/yyloginlitesdk.framework'
	end

	s.subspec 'yyloginlitedynamicsdk' do |sx|
    	sx.dependency 'yyloginlitesdk/yyloginliteservicecore'
    	sx.requires_arc = true
	    sx.xcconfig   = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
		sx.frameworks = 'SystemConfiguration'
		sx.libraries = 'c++','z'
		sx.source_files = 'include/**/*.h'
	    sx.ios.vendored_frameworks = 'libs/yyloginlitedynamicsdk.framework'
	end

	s.subspec 'yyloginlitesdkhttp' do |sx|
    	sx.dependency 'yyloginlitesdk/yyloginlitecore'
    	sx.requires_arc = true
	    sx.xcconfig   = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
		sx.frameworks = 'SystemConfiguration'
		sx.libraries = 'c++','z'
		sx.source_files = 'include/**/*.h'
	    sx.ios.vendored_frameworks = 'libs/yyloginlitesdkhttp.framework'
	end

	s.subspec 'all' do |sx|
		sx.dependency 'Protobuf'
		sx.dependency 'yyantilib/yyantilibstd'
		sx.dependency 'deviceinfokit'
    	sx.requires_arc = true
	    sx.xcconfig   = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
		sx.frameworks = 'SystemConfiguration'
		sx.libraries = 'c++','z'
		sx.source_files = 'include/**/*.h'
	    sx.ios.vendored_frameworks = 'libs/yyloginliteall.framework'
	end
	
	s.subspec 'yyloginlitesdkmacOS' do |ss|
		ss.dependency 'deviceinfokit/deviceinfokitmacOS'
		ss.dependency 'yyservicesdk/yyservicesdkmaclib'
		ss.dependency 'Protobuf'
        ss.requires_arc = true
        ss.frameworks = 'SystemConfiguration'
        ss.libraries = 'c++','z'
        ss.source_files = 'include/**/*.h'
        ss.osx.vendored_library = 'libs/libyyloginlitesdkmacOS.a'
  end

end
