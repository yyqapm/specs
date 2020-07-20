Pod::Spec.new do |s|
  s.name     = 'scloggersdk'
  s.version  = '1.0.5'
  s.summary  = 'scloggersdk'
  s.homepage = 'http://sunclouds.com'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2019 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'yy' => 'yypm@yy.com' }
  s.source = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/scloggersdk/1.0.5/scloggersdk.zip" }

  s.default_subspec = 'scloggersdk'

  s.subspec 'scloggersdk' do |sclogger|
    sclogger.platform = :ios, '4.3'
    sclogger.ios.deployment_target = '4.3'
    sclogger.dependency 'hydra/lite', '1.1.1'
    sclogger.requires_arc = true
    sclogger.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/scloggersdk/libs"' }
    sclogger.source_files = 'include/**/*.h'
    sclogger.vendored_libraries = 'libs/libscloggersdk.a'
    sclogger.libraries = 'scloggersdk'
  end


  s.subspec 'scloggersdk-macOS' do |scloggermac|
    scloggermac.platform = :osx, '10.6'
    scloggermac.osx.deployment_target = '10.6'
    scloggermac.dependency 'hydra/lite_macOS', '1.1.1'
    scloggermac.requires_arc = true
    scloggermac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/scloggersdk/libs"' }
    scloggermac.source_files = 'include/**/*.h'
    scloggermac.vendored_libraries = 'libs/libscloggersdk-macOS.a'
    scloggermac.libraries = 'scloggersdk-macOS'
  end

end
