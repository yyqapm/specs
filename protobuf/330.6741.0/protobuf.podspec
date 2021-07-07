Pod::Spec.new do |s|
  s.name         = "protobuf"
  s.version      = "330.6741.0"
  s.summary      = "protobuf library"
  s.homepage     = "https://protobuf.googlecode.com"
  s.license      = 'BSD-new'
  s.author       = { "Kenton Varda" => "kenton@google.com" }
  s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/protobuf/330.6741.0/protobuf.zip" }

  s.platform     = :ios, '4.3'
  s.ios.deployment_target = '4.3'
  s.requires_arc = true
  s.source_files = 'include/google/protobuf/**/*.{h,inc}'
  s.header_mappings_dir = './include'
  s.vendored_libraries = 'libs/*.a'

  s.libraries = 'protobuf'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/protobuf/libs/'}
  
end
