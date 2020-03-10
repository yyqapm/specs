Pod::Spec.new do |s|
	s.name              = 'argo'
	s.version           = '3.0.3-5-dev'
	s.author            = { 'yy' => 'liyuhua@yy.com' }
	s.license           = {
      		:type => 'Copyright',
      		:text => <<-LICENSE
      		Copyright 2005-2016 YY Inc., All rights reserved.
      		LICENSE
    	}
	s.homepage   		= 'http://sunclouds.com'
	s.source          	= { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/argo/3.0.3-5-dev/argo.zip" }
	s.summary      		= 'argo sdk.'
    s.default_subspec   = 'argo'
    
    s.subspec 'argo' do |sa|
        sa.ios.vendored_libraries 	= 'libs/libargo.a'
        sa.libraries   			    = 'z', 'c++'
        sa.frameworks 			    = 'Foundation'
        sa.requires_arc             = true
        sa.source_files 		    = 'include/**/*'
	    sa.xcconfig       	        = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/argo/libs"' }
        sa.header_mappings_dir 	    = 'include'
	    
	end
	
	s.subspec 'argomac' do |sm|
        sm.osx.vendored_libraries 	= 'libs/libargo-mac.a'
        sm.libraries   			    = 'z', 'c++'
        sm.frameworks 			    = 'Foundation'
        sm.requires_arc             = true
        sm.source_files 		    = 'include/**/*'
	    sm.xcconfig       	        = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/argo/libs"' }
        sm.header_mappings_dir 	    = 'include'
	    
	end
end
