Pod::Spec.new do |s|
	s.name         = 'yysignalsdk'
	s.version      = '1.9.109'
	s.summary      = 'yysignalsdk'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2017 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yysignalsdk/1.9.109/yysignalsdk.zip" }
	
	s.default_subspec = 'yysignalsdk'
	
	s.subspec 'yysignalsdk' do |sw|
        sw.dependency 'yyantilib/yyantilibstd', '2.2.8'
        sw.requires_arc = true
	    sw.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
	    sw.source_files = 'include/**/*.h'
	    sw.ios.vendored_frameworks = 'libs/yysignalsdk.framework'
	end
	
	s.subspec 'signalsdk' do |sx|
        sx.dependency 'yyantilib/yyantilibstd', '2.2.8'
        sx.requires_arc = true
	    sx.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
	    sx.source_files = 'include/**/*.h'
	    sx.ios.vendored_frameworks = 'libs/signalsdk.framework'
	end
	
	s.subspec 'yysignalsdkStatic' do |swStatic|
        
        swStatic.requires_arc = true
	    swStatic.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
	    swStatic.source_files = 'include/**/*.h'
	    swStatic.ios.vendored_frameworks = 'libs/yysignalsdkStatic.framework'
	end
	
	s.subspec 'signalsdkStatic' do |sxStatic|
        
        sxStatic.requires_arc = true
	    sxStatic.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
	    sxStatic.source_files = 'include/**/*.h'
	    sxStatic.ios.vendored_frameworks = 'libs/signalsdkStatic.framework'
	end
	
    s.subspec 'yysignalsdkcopy' do |sxcopy|
        
        sxcopy.requires_arc = true
        sxcopy.platform     = :ios, '8.0'
        sxcopy.ios.deployment_target = '8.0'
        sxcopy.source_files = 'include/**/*.h'
        sxcopy.vendored_library = 'libs/libyysignalsdkcopy.a'
        sxcopy.library = 'yysignalsdkcopy'
        sxcopy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yysignalsdkcopy/libs"' }
	end
	
end

