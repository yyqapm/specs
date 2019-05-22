Pod::Spec.new do |s|
  s.name         = "openssl"
  s.version      = "111.6717.0"
  s.summary      = "openssl library"
  s.homepage     = "https://www.openssl.org"
  s.license      = "OpenSSL License"
  s.author       = "The OpenSSL Project"
  s.source       = { :http => "http://repo.yypm.com/dwintegrate/dw3rdios/openssl/111.6717.0/openssl.zip" }

  s.platform     = :ios, '4.3'
  s.ios.deployment_target = '4.3'
  s.requires_arc = true
  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = './include'
  s.preserve_paths = 'lib/*.a'

  s.libraries = 'crypto', 'ssl'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/openssl/lib/'}
  
end
