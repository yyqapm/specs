Pod::Spec.new do |s|
  s.name     = 'jobase'
  s.version  = '1.3.160'
  s.summary  = 'jobase'
  s.homepage = 'https://jocloud.com/'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'jocloud' => 'marketing@jocloud.com' }
  s.source = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/jobase/1.3.160/jobase.zip" }

  s.default_subspec = 'jobase'

  s.subspec 'jobase' do |jobase|
    jobase.platform = :ios, '4.3'
    jobase.ios.deployment_target = '4.3'
    
    jobase.requires_arc = true
    jobase.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jobase/libs"' }
    jobase.source_files = 'include/**/*.h'
    jobase.vendored_libraries = 'libs/libjobase.a'
    jobase.libraries = 'jobase'
  end


  s.subspec 'jobase-mac' do |jobasemac|
    jobasemac.platform = :osx, '10.6'
    jobasemac.osx.deployment_target = '10.6'
    
    jobasemac.requires_arc = true
    jobasemac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jobase/libs"' }
    jobasemac.source_files = 'include/**/*.h'
    jobasemac.vendored_libraries = 'libs/libjobase-mac.a'
    jobasemac.libraries = 'jobase-mac'
  end


  s.subspec 'jobase-lite' do |ios_lite|
    ios_lite.platform = :ios, '4.3'
    ios_lite.ios.deployment_target = '4.3'
    
    ios_lite.requires_arc = true
    ios_lite.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jobase/libs"' }
    ios_lite.source_files = 'include/**/*.h'
    ios_lite.vendored_libraries = 'libs/libjobase-lite.a'
  end


  s.subspec 'jobase-mac-lite' do |mac_lite|
    mac_lite.platform = :osx, '10.6'
    mac_lite.osx.deployment_target = '10.6'
    
    mac_lite.requires_arc = true
    mac_lite.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jobase/libs"' }
    mac_lite.source_files = 'include/**/*.h'
    mac_lite.vendored_libraries = 'libs/libjobase-mac-lite.a'
  end


  s.subspec 'jobase-full' do |ios_full|
    ios_full.platform = :ios, '4.3'
    ios_full.ios.deployment_target = '4.3'
    
    ios_full.requires_arc = true
    ios_full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jobase/libs"' }
    ios_full.source_files = 'include/**/*.h'
    ios_full.vendored_libraries = 'libs/libjobase-full.a'
  end


  s.subspec 'jobase-mac-full' do |mac_full|
    mac_full.platform = :osx, '10.6'
    mac_full.osx.deployment_target = '10.6'
    
    mac_full.requires_arc = true
    mac_full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jobase/libs"' }
    mac_full.source_files = 'include/**/*.h'
    mac_full.vendored_libraries = 'libs/libjobase-mac-full.a'
  end


end
