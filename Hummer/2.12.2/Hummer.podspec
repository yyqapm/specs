Pod::Spec.new do |s|
  s.name         = 'Hummer'
  s.version      = '2.12.2'
  s.summary      = 'chatroom'
  s.homepage     = 'http://sunclouds.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2019 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'zhanglonghua@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/Hummer/2.12.2/Hummer.zip" }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'

  s.subspec 'Hummer' do |s| 
	s.vendored_frameworks             = 'libs/Hummer.framework'
	s.frameworks 				        = 'Foundation'
	s.libraries   				    = 'z', 'c++'
	s.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/Hummer.framework/Headers"' }
    s.dependency 'Hummer/Core'
    s.dependency 'Hummer/ChatRoom'
    s.vendored_libraries = 'libs/librtsengine.a'
  
  end
  
  s.subspec 'HummerDynamic' do |ds| 
	ds.vendored_frameworks             = 'libs/HummerDynamic.framework'
	ds.frameworks 				        = 'Foundation'
	ds.libraries   				    = 'z', 'c++'
	ds.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HummerDynamic.framework/Headers"' }
    ds.dependency 'Hummer/CoreDynamic'
    ds.dependency 'Hummer/ChatRoomDynamic'
  
  end

  s.subspec 'Hummer_nocrypto' do |s_nc| 
    s_nc.vendored_frameworks             = 'libs/Hummer_nocrypto.framework'
    s_nc.frameworks 				        = 'Foundation'
    s_nc.libraries   				    = 'z', 'c++'
    s_nc.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/Hummer_nocrypto.framework/Headers"' }
    s_nc.dependency 'Hummer/Core_nocrypto'
    s_nc.dependency 'Hummer/ChatRoom_nocrypto'
    s_nc.vendored_libraries = 'libs/librtsengine.a'
    
  end

  s.subspec 'Hummer_macOS' do |s_macOS| 
	s_macOS.vendored_frameworks             = 'libs/Hummer-macOS.framework'
	s_macOS.frameworks 				        = 'Foundation'
	s_macOS.libraries   				    = 'z', 'c++'
	s_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/Hummer-macOS.framework/Headers"' }
    s_macOS.dependency 'Hummer/Core_macOS'
    s_macOS.dependency 'Hummer/ChatRoom_macOS'
    s_macOS.vendored_libraries = 'libs/librtsengine_macOS.a'
	
  end
  
  s.subspec 'Core' do |sc|
    sc.ios.vendored_frameworks              = 'libs/HMRCore.framework'
    sc.frameworks 				            = 'Foundation'
    sc.libraries   				            = 'z', 'c++'
    sc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCore.framework/Headers"' }
    sc.vendored_libraries = 'libs/librtsengine.a'
    sc.dependency 'deviceinfokit', '~> 1.1.6'
sc.dependency 'hdstatsdk', '3.2.55'
sc.dependency 'hydra', '1.2.1'
sc.dependency 'jolog/jolog-full', '1.2.0'
  end
  
  s.subspec 'CoreDynamic' do |dsc|
    dsc.ios.vendored_frameworks              = 'libs/HMRCoreDynamic.framework'
    dsc.frameworks 				            = 'Foundation'
    dsc.libraries   				            = 'z', 'c++'
    dsc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCoreDynamic.framework/Headers"' }

    dsc.dependency 'deviceinfokit', '~> 1.1.6'
dsc.dependency 'hdstatsdk', '3.2.55'
dsc.dependency 'hydra', '1.2.1'
dsc.dependency 'jolog/jolog-full', '1.2.0'
  end

  s.subspec 'Core_nocrypto' do |sc_nc|
    sc_nc.ios.vendored_frameworks              = 'libs/HMRCore_nocrypto.framework'
    sc_nc.frameworks 				            = 'Foundation'
    sc_nc.libraries   				            = 'z', 'c++'
    sc_nc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCore_nocrypto.framework/Headers"' }
    sc_nc.vendored_libraries = 'libs/librtsengine.a'
    sc_nc.dependency 'deviceinfokit', '~> 1.1.6'
sc_nc.dependency 'hdstatsdk', '3.2.55'
  end
  
  s.subspec 'Core_macOS' do |sc_macOS|
    sc_macOS.osx.vendored_frameworks 	    = 'libs/HMRCore_macOS.framework'
    sc_macOS.frameworks 				    = 'Foundation'
    sc_macOS.libraries   				    = 'z', 'c++'
    sc_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCore_macOS.framework/Headers"' }
    sc_macOS.vendored_libraries = 'libs/librtsengine_macOS.a'
    
  end

  s.subspec 'ChatRoom' do |scr|
    scr.ios.vendored_frameworks			    = 'libs/HMRChatRoom.framework'
    scr.frameworks 			   			    = 'Foundation'
    scr.libraries   					    = 'z', 'c++'
    scr.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoom.framework/Headers"' }
    scr.dependency 'Hummer/Core'
    
  end
  
  s.subspec 'ChatRoomDynamic' do |dscr|
    dscr.ios.vendored_frameworks			    = 'libs/HMRChatRoomDynamic.framework'
    dscr.frameworks 			   			    = 'Foundation'
    dscr.libraries   					    = 'z', 'c++'
    dscr.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoomDynamic.framework/Headers"' }
    dscr.dependency 'Hummer/CoreDynamic'
    
  end

  s.subspec 'ChatRoom_nocrypto' do |scr_nc|
    scr_nc.ios.vendored_frameworks			    = 'libs/HMRChatRoom_nocrypto.framework'
    scr_nc.frameworks 			   			    = 'Foundation'
    scr_nc.libraries   					    = 'z', 'c++'
    scr_nc.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoom_nocrypto.framework/Headers"' }
    scr_nc.dependency 'Hummer/Core_nocrypto'
    
  end

  s.subspec 'ChatRoom_macOS' do |scr_macOS|
    scr_macOS.osx.vendored_frameworks	    = 'libs/HMRChatRoom_macOS.framework'
    scr_macOS.frameworks 				    = 'Foundation'
    scr_macOS.libraries   				    = 'z', 'c++'
    scr_macOS.xcconfig 			  		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoom_macOS.framework/Headers"' }
    scr_macOS.dependency 'Hummer/Core_macOS'
    
  end

    

end

