Pod::Spec.new do |s|
  s.name         = 'udbauthsdk'
  s.version      = '3.11.8'
  s.summary      = 'udbauthsdk'
  s.homepage     = 'http://sunclouds.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2013 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'g-yy-udb@yy.com'}
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/udbauthsdk/3.11.8/udbauthsdk.zip" }
  
  s.default_subspec = 'udbauthsdk'
  s.subspec 'udbauthsdk' do |ss|
      ss.platform     = :ios, '4.3'
      ss.ios.deployment_target = '4.3'
      ss.source_files = 'include/**/*.h'
      ss.vendored_library = 'libs/libudbauthsdk.a'
      ss.library = 'udbauthsdk'
      ss.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/udbauthsdk/libs"' }
  end
  
  s.subspec 'udbauthdynamicsdk' do |sy|
      sy.xcconfig     = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
      sy.source_files = 'include/**/*.h'
      sy.ios.vendored_frameworks = 'libs/*.framework'
  end
end