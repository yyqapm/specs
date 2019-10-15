Pod::Spec.new do |s|
	s.name         = 'yyaccesstranssdk'
	s.version      = '1.2.5'
	s.summary      = 'yyaccesstranssdk'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2017-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/yyaccesstranssdk/1.2.5/yyaccesstranssdk.zip" }
	s.platform     = :ios, '8.0'
    s.ios.deployment_target = '8.0'

	s.default_subspec = 'yyaccesstranssdk'
    s.subspec 'yyaccesstranssdk' do |sx|
        
        sx.requires_arc = true
        sx.preserve_paths  = 'libs/**/*.framework'
        sx.ios.vendored_frameworks = 'libs/*.framework'
	    sx.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    end
    s.subspec 'yyaccesstranssdklib' do |sw|
        
        sw.requires_arc = true
        sw.frameworks = 'SystemConfiguration'
        sw.libraries = 'c++','z'
        sw.ios.vendored_library = 'libs/libyyaccesstranssdklib.a'
    end
end
