Pod::Spec.new do |s|
	s.name         = 'hdstatsdk'
	s.version      = '3.2.47'
	s.summary      = 'hdstatsdk'
	s.homepage     = 'http://sunclouds.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2015 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/hdstatsdk/3.2.47/hdstatsdk.zip" }

	s.default_subspec = 'hdstatsdk'
    s.subspec 'hdstatsdk' do |ss|
      ss.platform     = :ios, '6.0'
      ss.ios.deployment_target = '6.0'
      ss.requires_arc = true
      ss.source_files = 'include/**/*.h'
      ss.vendored_library = 'libs/*.a'
      ss.library = 'HiidoSDK'
      ss.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hdstatsdk/libs"' }
    end
  
    s.subspec 'HiidoSDKDynamic' do |sy|
      sy.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
      sy.source_files = 'include/**/*.h'
      sy.ios.vendored_frameworks = 'libs/*.framework'
    end

end


