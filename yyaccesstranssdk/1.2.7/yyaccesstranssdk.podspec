Pod::Spec.new do |s|
	s.name         = 'yyaccesstranssdk'
	s.version      = '1.2.7'
	s.summary      = 'yyaccesstranssdk'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2017-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/yyaccesstranssdk/1.2.7/yyaccesstranssdk.zip" }

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
        sw.source_files = 'include/**/*.h'
        sw.ios.vendored_library = 'libs/libyyaccesstranssdklib.a'
    end
    s.subspec 'yyaccesstranssdkmaclib' do |ss|
        
        ss.requires_arc = true
        ss.frameworks = 'SystemConfiguration'
        ss.libraries = 'c++','z'
        ss.source_files = 'include/**/*.h'
        ss.osx.vendored_library = 'libs/libyyaccesstranssdkmaclib.a'
  end

end
