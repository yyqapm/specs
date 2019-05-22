Pod::Spec.new do |s|
    s.name         = 'openssl-dynamic'
    s.version      = '111.6718.0'
    s.summary      = 'openssl-dynamic'
    s.homepage     = 'http://www.yy.com/'
    s.license      = {
            :type => 'Copyright',
            :text => <<-LICENSE
            Copyright 2005-2013 YY Inc., All rights reserved.
            LICENSE
        }
    s.author       = { 'yy' => 'fangyang@yy.com' }
    s.source       = { :http => "http://repo.yypm.com/dwintegrate/dw3rdios/openssl-dynamic/111.6718.0/openssl.zip" }
    s.platform     = :ios, '8.0'
    s.ios.deployment_target     = '8.0'
    s.requires_arc              = true
    s.source_files              = 'openssl/openssl.framework/Headers/*.h'
    s.preserve_paths            = 'openssl/openssl.framework'
    s.ios.vendored_frameworks   = 'openssl/openssl.framework'
    s.xcconfig                  = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/openssl-dynamic/openssl/openssl.framework/Headers','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
end