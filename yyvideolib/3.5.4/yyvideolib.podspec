Pod::Spec.new do |s|
	s.name         = 'yyvideolib'
	s.version      = '3.5.4'
	s.summary      = 'yyvideolib'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/yyvideolib/3.5.4/yyvideolib.zip" }
	s.platform     = :ios, '4.3'
    s.ios.deployment_target = '4.3'
    s.requires_arc = true

    s.default_subspec = 'yyvideolib'
    
	s.subspec 'yyvideolib' do |ss|
		ss.preserve_paths  = 'libs/yyvideolib/yyvideolib.framework'
		ss.ios.vendored_frameworks = 'libs/yyvideolib.framework'
		ss.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
	end

	s.subspec 'yyvideolibstatic' do |sz|
    	sz.resource = 'resource/yyvideolibstatic/yyvideolib.bundle'
		sz.vendored_library = 'libs/libyyvideolibstatic.a'
		sz.library = 'yyvideolibstatic'
		sz.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end

	s.subspec 'yyvideolibplayer' do |sy|
    	sy.resource = 'resource/yyvideolibplayer/yyvideolib.bundle'
		sy.vendored_library = 'libs/libyyvideolibplayer.a'
		sy.library = 'yyvideolibplayer'
		sy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end

	s.subspec 'yyvideolibshower' do |sx|
    	sx.resource = 'resource/yyvideolibshower/yyvideolib.bundle'
		sx.vendored_library = 'libs/libyyvideolibshower.a'
		sx.library = 'yyvideolibshower'
		sx.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end

	s.subspec 'yyvideolib_nobeauty' do |st|
		st.preserve_paths  = 'libs/yyvideolib_nobeauty/yyvideolib_nobeauty.framework'
		st.ios.vendored_frameworks = 'libs/yyvideolib_nobeauty.framework'
		st.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
	end

	s.subspec 'yyvideolibstatic_nobeauty' do |sv|
    	sv.resource = 'resource/yyvideolibstatic_nobeauty/yyvideolib.bundle'
		sv.vendored_library = 'libs/libyyvideolibstatic_nobeauty.a'
		sv.library = 'yyvideolibstatic_nobeauty'
		sv.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end
end