Pod::Spec.new do |s|
  s.name     = 'jolog'
  s.version  = '1.0.1'
  s.summary  = 'jolog'
  s.homepage = 'https://jocloud.com/'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'jocloud' => 'marketing@jocloud.com' }
  s.source = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/jolog/1.0.1/jolog.zip" }

  s.default_subspec = 'jolog'

  s.subspec 'jolog' do |jolog|
    jolog.platform = :ios, '4.3'
    jolog.ios.deployment_target = '4.3'
    jolog.dependency 'hydra/lite', '~> 1.1.1'
    jolog.requires_arc = true
    jolog.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jolog/libs"' }
    jolog.source_files = 'include/**/*.h'
    jolog.vendored_libraries = 'libs/libjolog.a'
    jolog.libraries = 'jolog'
  end


  s.subspec 'jolog-mac' do |jologmac|
    jologmac.platform = :osx, '10.6'
    jologmac.osx.deployment_target = '10.6'
    jologmac.dependency 'hydra/lite_macOS', '~> 1.1.1'
    jologmac.requires_arc = true
    jologmac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jolog/libs"' }
    jologmac.source_files = 'include/**/*.h'
    jologmac.vendored_libraries = 'libs/libjolog-mac.a'
    jologmac.libraries = 'jolog-mac'
  end

end
