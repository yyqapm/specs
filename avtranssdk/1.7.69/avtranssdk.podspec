Pod::Spec.new do |s|
	s.name         = 'avtranssdk'
	s.version      = '1.7.69'
	s.summary      = 'avtranssdk for yyprotosdk'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/avtranssdk/1.7.69/avtranssdk.zip" }
	s.platform     = :ios, '4.3'
    s.ios.deployment_target = '4.3'
    s.requires_arc = true
	s.vendored_library = 'libs/libtranssdk.a'
	s.library = 'transsdk'
	s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/avtranssdk/libs"' }
end
