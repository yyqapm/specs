Pod::Spec.new do |s|
	s.name         = 'yyvideolibmac'
	s.version      = '1.0.27'
	s.summary      = 'yyvideolibmac'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyvideolibmac/1.0.27/yyvideolibmac.zip" }
    s.requires_arc = true

    s.default_subspec = 'yyvideolibmac_static'
	
	s.subspec 'yyvideolibmac_static' do |ssm|
	    ssm.dependency 'ffmpegmac', '332.400.030'
ssm.dependency 'libvpx-mac', '1.0.1'
		ssm.source_files = 'include/yyvideolibstatic_mac/*.h'
		ssm.vendored_library = 'libs/libyyvideolib.a'
		ssm.library = 'yyvideolib'
	end
end
