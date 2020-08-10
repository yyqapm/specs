Pod::Spec.new do |s|
  s.name         = "protobuf"
  s.version      = "3112.6726.0"
  s.summary      = "protobuf library"
  s.homepage     = "https://protobuf.googlecode.com"
  s.license      = 'BSD-new'
  s.author       = { "Kenton Varda" => "kenton@google.com" }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/protobuf/3112.6726.0/protobuf.zip" }

  s.platform     = :ios, '4.3'
  s.ios.deployment_target = '4.3'
  s.requires_arc = true
  s.source_files = 'include/google/protobuf/**/*.{h,inc}'
  s.header_mappings_dir = './include'
  s.vendored_libraries = 'libs/*.a'

  s.libraries = 'protobuf'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/protobuf/libs/'}
  
end
