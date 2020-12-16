Pod::Spec.new do |s|
  s.name         = 'Hummer'
  s.version      = '2.6.21'
  s.summary      = 'Hummer'
  s.homepage     = 'http://sunclouds.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2019 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'zhanglonghua@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/Hummer/2.6.21/Hummer.zip" }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  
  s.subspec 'Hummer_macOS' do |s_macOS| 
	s_macOS.vendored_frameworks             = 'libs/Hummer-macOS.framework'
	s_macOS.frameworks 				        = 'Foundation'
	s_macOS.libraries   				    = 'z', 'c++'
	s_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/Hummer-macOS.framework/Headers"' }
    s_macOS.dependency 'Hummer/Core_macOS'
    s_macOS.dependency 'Hummer/Conversation_macOS'
    s_macOS.dependency 'Hummer/Relationship_macOS'
    s_macOS.dependency 'Hummer/Database_macOS'
    s_macOS.dependency 'Hummer/ChatRoom_macOS'
    s_macOS.dependency 'Hummer/ChatStore_macOS'
    s_macOS.dependency 'Hummer/Signal_macOS'
    s_macOS.dependency 'Hummer/Channel_macOS'
	
  end

  s.subspec 'Core' do |sc|
    sc.ios.vendored_frameworks              = 'libs/HMRCore.framework'
    sc.frameworks 				            = 'Foundation'
    sc.libraries   				            = 'z', 'c++'
    sc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCore.framework/Headers"' }
    sc.dependency 'AliyunOSSiOS', '>= 2.10.7'
sc.dependency 'Protobuf', '>= 3.0.0'
sc.dependency 'ZipArchive', '>= 1.0.0'
sc.dependency 'deviceinfokit', '>= 1.0.7'
sc.dependency 'hdstatsdk', '>= 3.2.0'
sc.dependency 'spidercrab', '~> 100.2.1'
sc.dependency 'yyservicesdk/yyservicesdk-dynamic', '2.6.0'
  end
  s.subspec 'Core_macOS' do |sc_macOS|
    sc_macOS.osx.vendored_frameworks 	    = 'libs/HMRCore_macOS.framework'
    sc_macOS.frameworks 				    = 'Foundation'
    sc_macOS.libraries   				    = 'z', 'c++'
    sc_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCore_macOS.framework/Headers"' }
    
  end
  
  s.subspec 'Hmr' do |sh|
    sh.ios.vendored_frameworks              = 'libs/Hmr.framework'
    sh.frameworks 				            = 'Foundation'
    sh.libraries   				            = 'z', 'c++'
    sh.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/Hmr.framework/Headers"' }
    
  end
  s.subspec 'Hmr_macOS' do |sh_macOS|
    sh_macOS.osx.vendored_frameworks 	    = 'libs/Hmr_macOS.framework'
    sh_macOS.frameworks 				    = 'Foundation'
    sh_macOS.libraries   				    = 'z', 'c++'
    sh_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/Hmr_macOS.framework/Headers"' }
    
  end
    
  s.subspec 'Conversation' do |scn|
    scn.ios.vendored_frameworks			    = 'libs/HMRConversation.framework'
    scn.frameworks 			    	        = 'Foundation'
    scn.libraries   					    = 'z', 'c++'
    scn.xcconfig 			    		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRConversation.framework/Headers"' }
    scn.dependency 'Hummer/Database'
    
  end
  s.subspec 'Conversation_macOS' do |scn_macOS|
    scn_macOS.osx.vendored_frameworks	    = 'libs/HMRConversation_macOS.framework'
    scn_macOS.frameworks 				    = 'Foundation'
    scn_macOS.libraries   				    = 'z', 'c++'
    scn_macOS.xcconfig 			    	    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRConversation_macOS.framework/Headers"' }
    scn_macOS.dependency 'Hummer/Database_macOS'
    
  end
    
  s.subspec 'Relationship' do |sr|
    sr.ios.vendored_frameworks			    = 'libs/HMRRelationship.framework'
    sr.frameworks 			    		    = 'Foundation'
    sr.libraries   			    		    = 'z', 'c++'
    sr.xcconfig 			    		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRelationship.framework/Headers"' }
    sr.dependency 'Hummer/Database'
    
  end
  s.subspec 'Relationship_macOS' do |sr_macOS|
    sr_macOS.osx.vendored_frameworks	    = 'libs/HMRRelationship_macOS.framework'
    sr_macOS.frameworks 				    = 'Foundation'
    sr_macOS.libraries   				    = 'z', 'c++'
    sr_macOS.xcconfig 			    	    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRelationship_macOS.framework/Headers"' }
    sr_macOS.dependency 'Hummer/Database_macOS'
    
  end
    
  s.subspec 'Database' do |sd|
    sd.ios.vendored_frameworks			    = 'libs/HMRDatabase.framework'
    sd.frameworks 			    		    = 'Foundation'
    sd.libraries   			    		    = 'z', 'c++'
    sd.xcconfig 			    		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRDatabase.framework/Headers"' }
    sd.dependency 'Hummer/Core'
    sd.dependency 'FMDB', '>= 2.4.0'
  end
  s.subspec 'Database_macOS' do |sd_macOS|
    sd_macOS.osx.vendored_frameworks	    = 'libs/HMRDatabase_macOS.framework'
    sd_macOS.frameworks 				    = 'Foundation'
    sd_macOS.libraries   				    = 'z', 'c++'
    sd_macOS.xcconfig 			    	    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRDatabase_macOS.framework/Headers"' }
    sd_macOS.dependency 'Hummer/Core_macOS'
    
  end
    
  s.subspec 'ChatRoom' do |scr|
    scr.ios.vendored_frameworks			    = 'libs/HMRChatRoom.framework'
    scr.frameworks 			   			    = 'Foundation'
    scr.libraries   					    = 'z', 'c++'
    scr.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoom.framework/Headers"' }
    scr.dependency 'Hummer/Core'
    
  end
  s.subspec 'ChatRoom_macOS' do |scr_macOS|
    scr_macOS.osx.vendored_frameworks	    = 'libs/HMRChatRoom_macOS.framework'
    scr_macOS.frameworks 				    = 'Foundation'
    scr_macOS.libraries   				    = 'z', 'c++'
    scr_macOS.xcconfig 			  		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoom_macOS.framework/Headers"' }
    scr_macOS.dependency 'Hummer/Core_macOS'
    
  end
    
  s.subspec 'ChatStore' do |scs|
    scs.ios.vendored_frameworks			    = 'libs/HMRChatStore.framework'
    scs.frameworks 			 			    = 'Foundation'
    scs.libraries   					    = 'z', 'c++'
    scs.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatStore.framework/Headers"' }
    scs.dependency 'Hummer/Core'
    
  end
  s.subspec 'ChatStore_macOS' do |scs_macOS|
    scs_macOS.osx.vendored_frameworks	    = 'libs/HMRChatStore_macOS.framework'
    scs_macOS.frameworks 			 	    = 'Foundation'
    scs_macOS.libraries   				    = 'z', 'c++'
    scs_macOS.xcconfig 			  		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatStore_macOS.framework/Headers"' }
    scs_macOS.dependency 'Hummer/Core_macOS'
    
  end
    
  s.subspec 'Signal' do |ssl|
    ssl.ios.vendored_frameworks			    = 'libs/HMRSignal.framework'
    ssl.frameworks 			 			    = 'Foundation'
    ssl.libraries   					    = 'z', 'c++'
    ssl.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRSignal.framework/Headers"' }
    ssl.dependency 'Hummer/Core'
    
  end
  s.subspec 'Signal_macOS' do |ssl_macOS|
    ssl_macOS.osx.vendored_frameworks	    = 'libs/HMRSignal_macOS.framework'
    ssl_macOS.frameworks 			 	    = 'Foundation'
    ssl_macOS.libraries   				    = 'z', 'c++'
    ssl_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRSignal_macOS.framework/Headers"' }
    ssl_macOS.dependency 'Hummer/Core_macOS'
    
  end
    
  s.subspec 'Channel' do |scl|
    scl.ios.vendored_frameworks			    = 'libs/HMRChannel.framework'
    scl.frameworks 			 			    = 'Foundation'
    scl.libraries   					    = 'z', 'c++'
    scl.xcconfig 			 			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChannel.framework/Headers"' }
    scl.dependency 'Hummer/Core'
    
  end
  s.subspec 'Channel_macOS' do |scl_macOS|
    scl_macOS.osx.vendored_frameworks	    = 'libs/HMRChannel_macOS.framework'
    scl_macOS.frameworks 			 	    = 'Foundation'
    scl_macOS.libraries   			    	= 'z', 'c++'
    scl_macOS.xcconfig 			 	      	= { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChannel_macOS.framework/Headers"' }
    scl_macOS.dependency 'Hummer/Core_macOS'
    
  end
    
  s.subspec 'Rtm' do |srtm|
    srtm.ios.vendored_frameworks		    = 'libs/HMRRtm.framework'
    srtm.frameworks 			 		    = 'Foundation'
    srtm.libraries   					    = 'z', 'c++'
    srtm.xcconfig 			 			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRtm.framework/Headers"' }
    srtm.dependency 'Hummer/Hmr'
    
  end
  s.subspec 'Rtm_macOS' do |srtm_macOS|
    srtm_macOS.osx.vendored_frameworks	        = 'libs/HMRRtm_macOS.framework'
    srtm_macOS.frameworks 			 	        = 'Foundation'
    srtm_macOS.libraries   			    	    = 'z', 'c++'
    srtm_macOS.xcconfig 			 	      	= { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRtm_macOS.framework/Headers"' }
    srtm_macOS.dependency 'Hummer/Hmr_macOS'
    
  end
  
  s.subspec 'Rts' do |srts|
    srts.ios.vendored_frameworks		    = 'libs/HMRRts.framework'
    srts.frameworks 			 		    = 'Foundation'
    srts.libraries   					    = 'z', 'c++'
    srts.xcconfig 			 			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRts.framework/Headers"' }
    srts.dependency 'Hummer/Hmr'
    
  end
  s.subspec 'Rts_macOS' do |srts_macOS|
    srts_macOS.osx.vendored_frameworks	        = 'libs/HMRRts_macOS.framework'
    srts_macOS.frameworks 			 	        = 'Foundation'
    srts_macOS.libraries   			    	    = 'z', 'c++'
    srts_macOS.xcconfig 			 	      	= { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRts_macOS.framework/Headers"' }
    srts_macOS.dependency 'Hummer/Hmr_macOS'
    
  end

end
