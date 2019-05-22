Pod::Spec.new do |s|
	s.name         = 'yyaccesstranssdk'
	s.version      = '1.2.0'
	s.summary      = 'yyaccesstranssdk'
	s.homepage     = 'http://www.yy.com/'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2017-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://repo.yypm.com/dwbuild/mobile/ios/yyaccesstranssdk/YYACCESSTRANSSDK_1.2.0_REL/20190424-131-r55c6ffe3c5c0765941a6fa03691dcec6c82a7598//yyaccesstranssdk.zip" }
	s.platform     = :ios, '8.0'
    s.ios.deployment_target = '8.0'
    s.requires_arc = true
    s.preserve_paths  = 'libs/**/*.framework'
    s.ios.vendored_frameworks = 'libs/*.framework'
	s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
end
