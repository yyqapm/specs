Pod::Spec.new do |s|
	s.name         = 'avtranssdk'
	s.version      = '1.7.18-dev.7'
	s.summary      = 'avtranssdk for yyprotosdk'
	s.homepage     = 'http://www.yy.com/'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://repo.yypm.com/dwbuild/mobile/ios/avtranssdk/avtranssdk_thunderbolt_maint/20190519-91-r0b9ccf475534f55a56282d3a4064f20199840075//avtranssdk.zip" }
	s.platform     = :ios, '4.3'
    s.ios.deployment_target = '4.3'
    s.requires_arc = true
    s.source_files = 'include/**/*.h'
	s.vendored_library = 'libs/libtranssdk.a'
	s.library = 'transsdk'
	s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/avtranssdk/libs"' }
end
