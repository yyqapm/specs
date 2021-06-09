Pod::Spec.new do |s|
  s.name         = 'Hummer'
  s.version      = '2.16.22'
  s.summary      = 'chatroom'
  s.homepage     = 'http://www.joyyinc.com/'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2019 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'zhanglonghua@yy.com' }
  s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/Hummer/2.16.22/Hummer.zip" }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'

  s.default_subspec = 'HummerEncrypt'
  
  s.subspec 'Hummer' do |sh| 
	sh.vendored_frameworks             = 'libs/Hummer.framework'
	sh.frameworks 				        = 'Foundation'
	sh.libraries   				    = 'z', 'c++'
	sh.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/Hummer.framework/Headers"' }
    sh.dependency 'Hummer/Core'
    sh.dependency 'Hummer/ChatRoom'
    sh.dependency 'Hummer/Channel'
    sh.dependency 'Hummer/ChatStore'
    sh.dependency 'Hummer/Relationship'
  
  end
  
  s.subspec 'HummerDynamic' do |ds| 
	ds.vendored_frameworks             = 'libs/HummerDynamic.framework'
	ds.frameworks 				        = 'Foundation'
	ds.libraries   				    = 'z', 'c++'
	ds.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HummerDynamic.framework/Headers"' }
    ds.dependency 'Hummer/CoreDynamic'
    ds.dependency 'Hummer/ChatRoomDynamic'
    ds.dependency 'Hummer/ChannelDynamic'
    ds.dependency 'Hummer/ChatStoreDynamic'
    ds.dependency 'Hummer/RelationshipDynamic'
  
  end

  s.subspec 'HummerEncrypt' do |s_enc| 
    s_enc.vendored_frameworks             = 'libs/HummerEncrypt.framework'
    s_enc.frameworks 				        = 'Foundation'
    s_enc.libraries   				    = 'z', 'c++'
    s_enc.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HummerEncrypt.framework/Headers"' }
    s_enc.dependency 'Hummer/CoreEncrypt'
    s_enc.dependency 'Hummer/ChatRoomEncrypt'
    s_enc.dependency 'Hummer/ChannelEncrypt'
    s_enc.dependency 'Hummer/ChatStoreEncrypt'
    s_enc.dependency 'Hummer/RelationshipEncrypt'
    
  end

  s.subspec 'Hummer_macOS' do |s_macOS| 
	s_macOS.vendored_frameworks             = 'libs/Hummer-macOS.framework'
	s_macOS.frameworks 				        = 'Foundation'
	s_macOS.libraries   				    = 'z', 'c++'
	s_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/Hummer-macOS.framework/Headers"' }
    s_macOS.dependency 'Hummer/Core_macOS'
    s_macOS.dependency 'Hummer/ChatRoom_macOS'
    s_macOS.dependency 'Hummer/Channel_macOS'
    s_macOS.dependency 'Hummer/ChatStore_macOS'
    s_macOS.dependency 'Hummer/Relationship_macOS'
	
  end
  
  s.subspec 'EngineDynamic' do |dsce|
    dsce.ios.vendored_frameworks              = 'libs/HMREngineDynamic.framework'
    dsce.frameworks 				            = 'Foundation'
    dsce.libraries   				            = 'z', 'c++'
    dsce.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMREngineDynamic.framework/Headers"' }

    
  end
  
  s.subspec 'Core' do |sc|
    sc.ios.vendored_frameworks              = 'libs/HMRCore.framework'
    sc.frameworks 				            = 'Foundation'
    sc.libraries   				            = 'z', 'c++'
    sc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCore.framework/Headers"' }
    
  end

  s.subspec 'CoreStaticLib' do |sc|
    sc.ios.vendored_library              = 'libs/CoreStaticLib.a'
    sc.frameworks 				            = 'Foundation'
    sc.libraries   				            = 'z', 'c++', 'CoreStaticLib'
    sc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/Hummer/libs/HMRCoreStaticLib/Headers' }
    sc.vendored_libraries = 'libs/librtsengine.a'
    
  end
  
  s.subspec 'CoreDynamic' do |dsc|
    dsc.ios.vendored_frameworks              = 'libs/HMRCoreDynamic.framework'
    dsc.frameworks 				            = 'Foundation'
    dsc.libraries   				            = 'z', 'c++'
    dsc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCoreDynamic.framework/Headers"' }
    dsc.dependency 'Hummer/EngineDynamic'

    
  end

  s.subspec 'CoreEncrypt' do |sc_enc|
    sc_enc.ios.vendored_frameworks              = 'libs/HMRCoreEncrypt.framework'
    sc_enc.frameworks 				            = 'Foundation'
    sc_enc.libraries   				            = 'z', 'c++'
    sc_enc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCoreEncrypt.framework/Headers"' }
    
  end
  
  s.subspec 'Core_macOS' do |sc_macOS|
    sc_macOS.osx.vendored_frameworks 	    = 'libs/HMRCore_macOS.framework'
    sc_macOS.frameworks 				    = 'Foundation'
    sc_macOS.libraries   				    = 'z', 'c++'
    sc_macOS.xcconfig 					    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRCore_macOS.framework/Headers"' }
    
  end

  s.subspec 'ChatRoom' do |scr|
    scr.ios.vendored_frameworks			    = 'libs/HMRChatRoom.framework'
    scr.frameworks 			   			    = 'Foundation'
    scr.libraries   					    = 'z', 'c++'
    scr.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoom.framework/Headers"' }
    scr.dependency 'Hummer/Core'
    
  end

  s.subspec 'ChatRoomStaticLib' do |sc|
    sc.ios.vendored_library              = 'libs/ChatRoomStaticLib.a'
    sc.frameworks 				            = 'Foundation'
    sc.libraries   				            = 'z', 'c++', 'ChatRoomStaticLib'
    sc.xcconfig 						    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/Hummer/libs/HMRChatRoomStaticLib/Headers' }
    
  end
  
  s.subspec 'ChatRoomDynamic' do |dscr|
    dscr.ios.vendored_frameworks			    = 'libs/HMRChatRoomDynamic.framework'
    dscr.frameworks 			   			    = 'Foundation'
    dscr.libraries   					    = 'z', 'c++'
    dscr.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoomDynamic.framework/Headers"' }
    dscr.dependency 'Hummer/CoreDynamic'
    
  end

  s.subspec 'ChatRoomEncrypt' do |scr_enc|
    scr_enc.ios.vendored_frameworks			    = 'libs/HMRChatRoomEncrypt.framework'
    scr_enc.frameworks 			   			    = 'Foundation'
    scr_enc.libraries   					    = 'z', 'c++'
    scr_enc.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoomEncrypt.framework/Headers"' }
    scr_enc.dependency 'Hummer/CoreEncrypt'
    
  end

  s.subspec 'ChatRoom_macOS' do |scr_macOS|
    scr_macOS.osx.vendored_frameworks	    = 'libs/HMRChatRoom_macOS.framework'
    scr_macOS.frameworks 				    = 'Foundation'
    scr_macOS.libraries   				    = 'z', 'c++'
    scr_macOS.xcconfig 			  		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatRoom_macOS.framework/Headers"' }
    scr_macOS.dependency 'Hummer/Core_macOS'
    
  end

  s.subspec 'Channel' do |sca|
    sca.ios.vendored_frameworks			    = 'libs/HMRChannel.framework'
    sca.frameworks 			   			    = 'Foundation'
    sca.libraries   					    = 'z', 'c++'
    sca.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChannel.framework/Headers"' }
    sca.dependency 'Hummer/Core'
    
  end
  
  s.subspec 'ChannelDynamic' do |dsca|
    dsca.ios.vendored_frameworks			    = 'libs/HMRChannelDynamic.framework'
    dsca.frameworks 			   			    = 'Foundation'
    dsca.libraries   					    = 'z', 'c++'
    dsca.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChannelDynamic.framework/Headers"' }
    dsca.dependency 'Hummer/CoreDynamic'
    
  end

  s.subspec 'ChannelEncrypt' do |sca_enc|
    sca_enc.ios.vendored_frameworks			    = 'libs/HMRChannelEncrypt.framework'
    sca_enc.frameworks 			   			    = 'Foundation'
    sca_enc.libraries   					    = 'z', 'c++'
    sca_enc.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChannelEncrypt.framework/Headers"' }
    sca_enc.dependency 'Hummer/CoreEncrypt'
    
  end

  s.subspec 'Channel_macOS' do |sca_macOS|
    sca_macOS.osx.vendored_frameworks	    = 'libs/HMRChannel_macOS.framework'
    sca_macOS.frameworks 				    = 'Foundation'
    sca_macOS.libraries   				    = 'z', 'c++'
    sca_macOS.xcconfig 			  		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChannel_macOS.framework/Headers"' }
    sca_macOS.dependency 'Hummer/Core_macOS'
    
  end

  s.subspec 'ChatStore' do |scs|
    scs.ios.vendored_frameworks			    = 'libs/HMRChatStore.framework'
    scs.frameworks 			   			    = 'Foundation'
    scs.libraries   					    = 'z', 'c++'
    scs.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatStore.framework/Headers"' }
    scs.dependency 'Hummer/Core'
    
  end
  
  s.subspec 'ChatStoreDynamic' do |dscs|
    dscs.ios.vendored_frameworks			    = 'libs/HMRChatStoreDynamic.framework'
    dscs.frameworks 			   			    = 'Foundation'
    dscs.libraries   					    = 'z', 'c++'
    dscs.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatStoreDynamic.framework/Headers"' }
    dscs.dependency 'Hummer/CoreDynamic'
    
  end

  s.subspec 'ChatStoreEncrypt' do |scs_enc|
    scs_enc.ios.vendored_frameworks			    = 'libs/HMRChatStoreEncrypt.framework'
    scs_enc.frameworks 			   			    = 'Foundation'
    scs_enc.libraries   					    = 'z', 'c++'
    scs_enc.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatStoreEncrypt.framework/Headers"' }
    scs_enc.dependency 'Hummer/CoreEncrypt'
    
  end

  s.subspec 'ChatStore_macOS' do |scs_macOS|
    scs_macOS.osx.vendored_frameworks	    = 'libs/HMRChatStore_macOS.framework'
    scs_macOS.frameworks 				    = 'Foundation'
    scs_macOS.libraries   				    = 'z', 'c++'
    scs_macOS.xcconfig 			  		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRChatStore_macOS.framework/Headers"' }
    scs_macOS.dependency 'Hummer/Core_macOS'
    
  end  

  s.subspec 'Relationship' do |srs|
    srs.ios.vendored_frameworks			    = 'libs/HMRRelationship.framework'
    srs.frameworks 			   			    = 'Foundation'
    srs.libraries   					    = 'z', 'c++'
    srs.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRelationship.framework/Headers"' }
    srs.dependency 'Hummer/Core'
    
  end
  
  s.subspec 'RelationshipDynamic' do |dsrs|
    dsrs.ios.vendored_frameworks			    = 'libs/HMRRelationshipDynamic.framework'
    dsrs.frameworks 			   			    = 'Foundation'
    dsrs.libraries   					    = 'z', 'c++'
    dsrs.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRelationshipDynamic.framework/Headers"' }
    dsrs.dependency 'Hummer/CoreDynamic'
    
  end

  s.subspec 'RelationshipEncrypt' do |srs_enc|
    srs_enc.ios.vendored_frameworks			    = 'libs/HMRRelationshipEncrypt.framework'
    srs_enc.frameworks 			   			    = 'Foundation'
    srs_enc.libraries   					    = 'z', 'c++'
    srs_enc.xcconfig 			  			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRelationshipEncrypt.framework/Headers"' }
    srs_enc.dependency 'Hummer/CoreEncrypt'
    
  end

  s.subspec 'Relationship_macOS' do |srs_macOS|
    srs_macOS.osx.vendored_frameworks	    = 'libs/HMRRelationship_macOS.framework'
    srs_macOS.frameworks 				    = 'Foundation'
    srs_macOS.libraries   				    = 'z', 'c++'
    srs_macOS.xcconfig 			  		    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hummer/libs/HMRRelationship_macOS.framework/Headers"' }
    srs_macOS.dependency 'Hummer/Core_macOS'
    
  end
end

