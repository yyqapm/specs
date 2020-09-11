Pod::Spec.new do |s|
  s.name     = 'jolog'
  s.version  = '1.1.3'
  s.summary  = 'jolog'
  s.homepage = 'https://jocloud.com/'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'jocloud' => 'marketing@jocloud.com' }
  s.source = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/jolog/1.1.3/jolog.zip" }

  s.default_subspec = 'jolog-full'

  s.subspec 'jolog-full' do |full|
    full.platform = :ios, '4.3'
    full.ios.deployment_target = '4.3'
    full.dependency 'hydra/hydra', '1.1.23'
full.dependency 'jobase/jobase', '1.0.2'
    full.requires_arc = true
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jolog/libs"' }
    full.source_files = 'include/**/*.h'
    full.vendored_libraries = 'libs/libjolog-full.a'
    full.libraries = 'jolog-full'
  end


  s.subspec 'jolog-full-macOS' do |full_mac|
    full_mac.platform = :osx, '10.6'
    full_mac.osx.deployment_target = '10.6'
    full_mac.dependency 'hydra/hydra_macOS', '1.1.23'
full_mac.dependency 'jobase/jobase-mac', '1.0.2'
    full_mac.requires_arc = true
    full_mac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jolog/libs"' }
    full_mac.source_files = 'include/**/*.h'
    full_mac.vendored_libraries = 'libs/libjolog-full-macOS.a'
    full_mac.libraries = 'jolog-full-macOS'
  end


  s.subspec 'jolog-lite' do |lite|
    lite.platform = :ios, '4.3'
    lite.ios.deployment_target = '4.3'
    lite.dependency 'hydra/lite', '1.1.23'
lite.dependency 'jobase/jobase', '1.0.2'
    lite.requires_arc = true
    lite.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jolog/libs"' }
    lite.source_files = 'include/**/*.h'
    lite.vendored_libraries = 'libs/libjolog-lite.a'
    lite.libraries = 'jolog-lite'
  end


  s.subspec 'jolog-lite-macOS' do |lite_mac|
    lite_mac.platform = :osx, '10.6'
    lite_mac.osx.deployment_target = '10.6'
    lite_mac.dependency 'hydra/lite_macOS', '1.1.23'
lite_mac.dependency 'jobase/jobase-mac', '1.0.2'
    lite_mac.requires_arc = true
    lite_mac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jolog/libs"' }
    lite_mac.source_files = 'include/**/*.h'
    lite_mac.vendored_libraries = 'libs/libjolog-lite-macOS.a'
    lite_mac.libraries = 'jolog-lite-macOS'
  end

end
