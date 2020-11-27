Pod::Spec.new do |s|
  s.name     = 'jodns'
  s.version  = '1.0.6-52-dev'
  s.summary  = 'jodns'
  s.homepage = 'https://jocloud.com/'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'jocloud' => 'marketing@jocloud.com' }
  s.source = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/jodns/1.0.6-52-dev/jodns.zip" }

  s.default_subspec = 'jodns'

  s.subspec 'jodns' do |jodns|
    jodns.platform = :ios, '4.3'
    jodns.ios.deployment_target = '4.3'
    
    jodns.requires_arc = true
    jodns.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jodns/libs"' }
    jodns.source_files = 'include/**/*.h'
    jodns.vendored_libraries = 'libs/libjodns.a'
    jodns.libraries = 'jodns'
  end


  s.subspec 'jodns-mac' do |jodnsmac|
    jodnsmac.platform = :osx, '10.6'
    jodnsmac.osx.deployment_target = '10.6'
    
    jodnsmac.requires_arc = true
    jodnsmac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/jodns/libs"' }
    jodnsmac.source_files = 'include/**/*.h'
    jodnsmac.vendored_libraries = 'libs/libjodns-mac.a'
    jodnsmac.libraries = 'jodns-mac'
  end

end
