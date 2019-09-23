Pod::Spec.new do |s|
	s.name         = 'Hummer'
	s.version      = '2.6.12'
	s.summary      = 'Hummer'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2019 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'zhanglonghua@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/Hummer/2.6.12/Hummer.zip" }
	s.platform     = :ios, '8.0'
  	s.ios.deployment_target = '8.0'
  	s.requires_arc = true

  	s.subspec 'Core' do |sc|
  		sc.vendored_frameworks 	= 'libs/HMRCore.framework'
  		sc.frameworks 			= 'Foundation'
  		sc.libraries   			= 'z', 'c++'
  		sc.xcconfig 			= { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Hummer/libs/HMRCore.framework/Headers" }
  		sc.dependency 'AliyunOSSiOS', '>= 2.10.7'
sc.dependency 'Protobuf', '>= 3.0.0'
sc.dependency 'ZipArchive', '>= 1.0.0'
sc.dependency 'deviceinfokit', '>= 1.0.7'
sc.dependency 'hdstatsdk', '>= 3.2.0'
sc.dependency 'yylogger', '1.0.6'
sc.dependency 'yyservicesdk', '~> 2.2.21'
  	end
  	
  	s.subspec 'Conversation' do |scn|
  		scn.vendored_frameworks 	= 'libs/HMRConversation.framework'
  		scn.frameworks 			    = 'Foundation'
  		scn.libraries   			= 'z', 'c++'
  		scn.xcconfig 			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Hummer/libs/HMRConversation.framework/Headers" }
  		scn.dependency 'Hummer/Database'
  		
  	end
  	
  	s.subspec 'Relationship' do |sr|
  		sr.vendored_frameworks 	    = 'libs/HMRRelationship.framework'
  		sr.frameworks 			    = 'Foundation'
  		sr.libraries   			    = 'z', 'c++'
  		sr.xcconfig 			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Hummer/libs/HMRRelationship.framework/Headers" }
  		sr.dependency 'Hummer/Database'
  		
  	end
  	
  	s.subspec 'Database' do |sd|
  		sd.vendored_frameworks 	    = 'libs/HMRDatabase.framework'
  		sd.frameworks 			    = 'Foundation'
  		sd.libraries   			    = 'z', 'c++'
  		sd.xcconfig 			    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Hummer/libs/HMRDatabase.framework/Headers" }
  		sd.dependency 'Hummer/Core'
  		sd.dependency 'FMDB', '>= 2.4.0'
  	end
  	
  	s.subspec 'ChatRoom' do |scr|
  		scr.vendored_frameworks 	    = 'libs/HMRChatRoom.framework'
  		scr.frameworks 			        = 'Foundation'
  		scr.libraries   			    = 'z', 'c++'
  		scr.xcconfig 			        = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Hummer/libs/HMRChatRoom.framework/Headers" }
  		scr.dependency 'Hummer/Core'
  		
  	end
  	
  	s.subspec 'ChatStore' do |scs|
  		scs.vendored_frameworks 	    = 'libs/HMRChatStore.framework'
  		scs.frameworks 			        = 'Foundation'
  		scs.libraries   			    = 'z', 'c++'
  		scs.xcconfig 			        = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Hummer/libs/HMRChatStore.framework/Headers" }
  		scs.dependency 'Hummer/Core'
  		
  	end
  	
  	s.subspec 'Signal' do |ssl|
  		ssl.vendored_frameworks 	    = 'libs/HMRSignal.framework'
  		ssl.frameworks 			        = 'Foundation'
  		ssl.libraries   			    = 'z', 'c++'
  		ssl.xcconfig 			        = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hummer/libs"', 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Hummer/libs/HMRSignal.framework/Headers" }
  		ssl.dependency 'Hummer/Core'
  		
  	end

end
