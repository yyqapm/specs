Pod::Spec.new do |s|
  s.name     = 'jobase'
  s.version  = '1.0.1'
  s.summary  = 'jobase'
  s.homepage = 'https://jocloud.com/'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'jocloud' => 'marketing@jocloud.com' }
  s.source = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/jobase/1.0.1/jobase.zip" }

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

end
