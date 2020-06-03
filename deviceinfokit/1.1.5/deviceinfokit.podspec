Pod::Spec.new do |s|
	s.name         = 'deviceinfokit'
	s.version      = '1.1.5'
	s.summary      = 'deviceinfokit'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2016 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'xiaoxueyuan' => 'xiaoxueyuan@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/deviceinfokit/1.1.5/deviceinfokit.zip" }
	
    s.default_subspec = 'deviceinfokit'
    s.subspec 'deviceinfokit' do |ss|
	    ss.platform     = :ios, '7.0'
  	    ss.ios.deployment_target = '7.0'
  	    ss.requires_arc = true
  	    ss.source_files = 'include/**/*.h'
    	ss.frameworks = 'Foundation', 'UIKit' 
    	ss.ios.vendored_library = 'libs/libDeviceInfoKit.a'
    end
    
    s.subspec 'deviceinfokitmacOS' do |sy|
        sy.requires_arc = true
        sy.source_files = 'include/**/*.h'
        sy.frameworks = 'Foundation'
        sy.osx.vendored_library = 'libs/libDeviceInfoKitmacOS.a'
    end

end


