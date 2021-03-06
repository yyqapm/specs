Pod::Spec.new do |s|
	s.name         = 'transengine'
	s.version      = '2.4.0'
	s.summary      = 'transengine for yyprotosdk'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
    s.author       = { 'yy' => 'yypm@yy.com' }
    s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/transengine/2.4.0/transengine.zip" }
	
    s.default_subspec = 'transengine-full'
    s.subspec 'transengine-full' do |full|
	    full.platform     = :ios, '4.3'
	    full.ios.deployment_target = '4.3'
	    
	    full.requires_arc = true
	    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/transengine/libs"' }
	    full.vendored_libraries = 'libs/libtransengine-full.a'
	    full.libraries  = 'transengine-full'
    end
	
    s.subspec 'transengine-audio' do |audio|
	    audio.platform     = :ios, '4.3'
	    audio.ios.deployment_target = '4.3'
	    
	    audio.requires_arc = true
	    audio.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/transengine/libs"' }
	    audio.vendored_libraries = 'libs/libtransengine-audio.a'
	    audio.libraries  = 'transengine-audio'
    end

end
