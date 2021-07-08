Pod::Spec.new do |s|
  s.name         = "libpng"
  s.version      = "1616.4743.0"
  s.summary      = "libpng libraries"
  s.homepage     = "http://www.libpng.org/pub/png/libpng.html"
  s.license      = 'Open Source Licenses, BSD-Compatible'
  s.author       = { "Greg Roelofs" => "png-mng-implement@lists.sourceforge.net" }
  s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/libpng/1616.4743.0/libpng.zip" }

  s.platform     = :ios, '4.3'
  s.ios.deployment_target = '4.3'
  s.requires_arc = true
  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = './include'
  s.preserve_paths = 'libs/*.a'

  s.libraries = 'png'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/libpng/libs/'}
  
end
