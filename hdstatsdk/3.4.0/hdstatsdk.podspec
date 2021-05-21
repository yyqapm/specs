Pod::Spec.new do |s|
	s.name         = 'hdstatsdk'
	s.version      = '3.4.0'
	s.summary      = 'hdstatsdk'
	s.homepage     = 'http://www.joyyinc.com/'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2015 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hdstatsdk/3.4.0/hdstatsdk.zip" }

	s.default_subspec = 'hdstatsdk'
    s.subspec 'hdstatsdk' do |ss|
      ss.platform     = :ios, '6.0'
      ss.ios.deployment_target = '6.0'
      ss.requires_arc = true
      ss.source_files = 'include/**/*.h'
      ss.vendored_library = 'libs/*.a'
      ss.libraries = 'HiidoSDK'
      ss.frameworks    = 'SystemConfiguration','CoreTelephony'
      ss.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hdstatsdk/libs"' }
    end
  
    s.subspec 'HiidoSDKDynamic' do |sy|
      sy.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
      sy.source_files = 'include/**/*.h'
      sy.ios.vendored_frameworks = 'libs/*.framework'
    end

end


