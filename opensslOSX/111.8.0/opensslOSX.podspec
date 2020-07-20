Pod::Spec.new do |s|
  s.name         = "opensslOSX"
  s.version      = "111.8.0"
  s.summary      = "opensslOSX library"
  s.homepage     = "https://www.openssl.org"
  s.license      = "OpenSSL License"
  s.author       = "The OpenSSL Project"
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/opensslOSX/111.8.0/openssl.zip" }

  s.requires_arc = true
  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = './include'
  s.preserve_paths = 'lib/*.a'

  s.library = 'crypto', 'ssl'
  s.vendored_library = 'libcrypto.a', 'libssl.a'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/opensslOSX/lib/'}
  
end

