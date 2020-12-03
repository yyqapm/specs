Pod::Spec.new do |s|
	s.name         = 'yyvideolib'
	s.version      = '100.10.0'
	s.summary      = 'yyvideolib'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyvideolib/100.10.0/yyvideolib.zip" }
    s.requires_arc = true

    s.default_subspec = 'yyvideolib'
    
	s.subspec 'yyvideolib' do |ss|
		ss.preserve_paths  = 'libs/yyvideolib/yyvideolib.framework'
		ss.ios.vendored_frameworks = 'libs/yyvideolib.framework'
		ss.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
	end

	s.subspec 'yyvideolibstatic' do |sz|
		sz.source_files = 'include/yyvideolibstatic/*.h'
    	sz.resource = 'resource/yyvideolibstatic/yyvideolib.bundle'
		sz.vendored_library = 'libs/libyyvideolibstatic.a'
		sz.library = 'yyvideolibstatic'
		sz.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end

	s.subspec 'yyvideolibplayer' do |sy|
		sy.source_files = 'include/yyvideolibplayer/*.h'
    	sy.resource = 'resource/yyvideolibplayer/yyvideolib.bundle'
		sy.vendored_library = 'libs/libyyvideolibplayer.a'
		sy.library = 'yyvideolibplayer'
		sy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end

	s.subspec 'yyvideolibshower' do |sx|
		sx.source_files = 'include/yyvideolibshower/*.h'
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
		sv.source_files = 'include/yyvideolibstatic_nobeauty/*.h'
    	sv.resource = 'resource/yyvideolibstatic_nobeauty/yyvideolib.bundle'
		sv.vendored_library = 'libs/libyyvideolibstatic_nobeauty.a'
		sv.library = 'yyvideolibstatic_nobeauty'
		sv.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end
        s.subspec 'yyvideolibsmallstatic_nobeauty' do |sv|
                sv.source_files = 'include/yyvideolibsmallstatic_nobeauty/*.h'
        sv.resource = 'resource/yyvideolibsmallstatic_nobeauty/yyvideolib.bundle'
                sv.vendored_library = 'libs/libyyvideolibsmallstatic_nobeauty.a'
                sv.library = 'yyvideolibsmallstatic_nobeauty'
                sv.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
        end
        s.subspec 'yyvideolibnosoftcodec' do |scdc|
                scdc.source_files = 'include/yyvideolibnosoftcodec/*.h'
        scdc.resource = 'resource/yyvideolibnosoftcodec/yyvideolib.bundle'
                scdc.vendored_library = 'libs/libyyvideolibnosoftcodec.a'
                scdc.library = 'yyvideolibnosoftcodec'
                scdc.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
        end	
	s.subspec 'yyvideolibstatic_mac' do |ssm|
		ssm.source_files = 'include/yyvideolibstatic_mac/*.h'
		ssm.vendored_library = 'libs/libyyvideolib-macOS.a'
		ssm.library = 'yyvideolib-macOS'
		ssm.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyvideolib/libs"' }
	end
end
