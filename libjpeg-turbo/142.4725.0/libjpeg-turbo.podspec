Pod::Spec.new do |s|
  s.name         = "libjpeg-turbo"
  s.version      = "142.4725.0"
  s.summary      = "turbo jpeg library"
  s.homepage     = "https://github.com/libjpeg-turbo/libjpeg-turbo"
  s.license      = 'libjpeg-turbo Licenses, BSD-Compatible'
  s.author       = { "Darrell Commander" => "information@libjpeg-turbo.org" }
  s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/libjpeg-turbo/142.4725.0/libjpeg-turbo.zip" }

  s.platform     = :ios, '4.3'
  s.ios.deployment_target = '4.3'
  s.requires_arc = true
  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = './include'
  s.preserve_paths = 'libs/*.a'

  s.libraries = 'turbojpeg'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/libjpeg-turbo/libs/'}
  
end
