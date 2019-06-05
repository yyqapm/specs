Pod::Spec.new do |s|
  s.name         = "curl"
  s.version      = "7620.6703.0"
  s.summary      = "curl library"
  s.homepage     = "http://curl.haxx.se"
  s.license      = 'MIT'
  s.author       = { "Daniel Stenberg" => "daniel@haxx.se" }
  s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/curl/7620.6703.0/curl.zip" }

  s.platform     = :ios, '4.3'
  s.ios.deployment_target = '4.3'
  s.requires_arc = true
  s.source_files = 'include/curl/*.h'
  s.header_mappings_dir = './include'
  s.preserve_paths = 'libs/*.a'

  s.libraries = 'curl'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/curl/libs/'}
  
end