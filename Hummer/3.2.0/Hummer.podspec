Pod::Spec.new do |s|
  s.name         = 'Hummer'
  s.version      = '3.2.0'
  s.summary      = 'hmr'
  s.homepage     = 'http://sunclouds.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2019 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'zhanglonghua@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/Hummer/3.2.0/Hummer.zip" }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'

  s.subspec 'Hummer' do |s| 
	s.vendored_frameworks             = 'libs/Hummer.framework'
	s.frameworks 				        = 'Foundation'
	s.libraries   				    = 'z', 'c++'
	s.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/hmr/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/hmr/libs/Hummer.framework/Headers"' }
    s.dependency 'Hummer/Hmr'
    s.dependency 'Hummer/Rts'
    s.vendored_libraries = 'libs/librtsengine.a'
	
  end

  s.subspec 'Hummer_macOS' do |s_macOS| 
	s_macOS.vendored_frameworks             = 'libs/Hummer-macOS.framework'
	s_macOS.frameworks 				        = 'Foundation'
	s_macOS.libraries   				    = 'z', 'c++'
	s_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/hmr/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/hmr/libs/Hummer-macOS.framework/Headers"' }
    s_macOS.dependency 'Hummer/Hmr_macOS'
    s_macOS.dependency 'Hummer/Rts_macOS'
    s_macOS.vendored_libraries = 'libs/librtsengine_macOS.a'
	
  end

  s.subspec 'Hmr' do |sh|
    sh.ios.vendored_frameworks              = 'libs/Hmr.framework'
    sh.frameworks 				            = 'Foundation'
    sh.libraries   				            = 'z', 'c++'
    sh.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/hmr/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/hmr/libs/Hmr.framework/Headers"' }
    
    sh.vendored_libraries = 'libs/librtsengine.a'
    sh.dependency 'deviceinfokit', '~> 1.1.6'
sh.dependency 'hdstatsdk', '>= 3.2.0'
sh.dependency 'hydra', '1.1.0'
sh.dependency 'protobuf', '3112.6726.0'
sh.dependency 'spidercrab', '~> 1.2.3'
  end
  
  s.subspec 'Hmr_macOS' do |sh_macOS|
    sh_macOS.osx.vendored_frameworks 	    = 'libs/Hmr_macOS.framework'
    sh_macOS.frameworks 				    = 'Foundation'
    sh_macOS.libraries   				    = 'z', 'c++'
    sh_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/hmr/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/hmr/libs/Hmr_macOS.framework/Headers"' }
    
    sh_macOS.vendored_libraries = 'libs/librtsengine_macOS.a'
    sh_macOS.dependency 'deviceinfokit/deviceinfokitmacOS', '~> 1.1.6'
sh_macOS.dependency 'hydra', '1.1.0'
sh_macOS.dependency 'protobuf', '3112.6726.0'
sh_macOS.dependency 'spidercrab/spidercrab_macOS', '~> 1.2.3'
  end
    
  s.subspec 'Rts' do |srts|
    srts.ios.vendored_frameworks		    = 'libs/HMRRts.framework'
    srts.frameworks 			 		    = 'Foundation'
    srts.libraries   					    = 'z', 'c++'
    srts.xcconfig 			 			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/hmr/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/hmr/libs/HMRRts.framework/Headers"' }
    srts.dependency 'Hummer/Hmr'
    
    srts.vendored_libraries = 'libs/librtsengine.a'
  end
  
  s.subspec 'Rts_macOS' do |srts_macOS|
    srts_macOS.osx.vendored_frameworks	        = 'libs/HMRRts_macOS.framework'
    srts_macOS.frameworks 			 	        = 'Foundation'
    srts_macOS.libraries   			    	    = 'z', 'c++'
    srts_macOS.xcconfig 			 	      	= { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/hmr/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/hmr/libs/HMRRts_macOS.framework/Headers"' }
    srts_macOS.dependency 'Hummer/Hmr_macOS'
    
    srts_macOS.vendored_libraries = 'libs/librtsengine_macOS.a'
  end

end
