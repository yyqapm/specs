Pod::Spec.new do |s|
  s.name         = 'yyservicesdk'
  s.version      = '2.2.0-dev.3'
  s.summary      = 'yyservicesdk'
  s.homepage     = 'http://www.yy.com/'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'yypm@yy.com' }
  s.source       = { :http => "http://repo.yypm.com/dwbuild/mobile/ios/yyservicesdk/yyservicesdk_lite_maint/20190515-155-r88ab98fc44faa77513dde8dc05b5597c58562ac0//yyservicesdk.zip" }
  s.default_subspec = 'yyservicesdk'
  s.subspec 'yyservicesdk' do |sw|
    sw.dependency 'openssl', '111.6717.0'
sw.dependency 'yyaccesstranssdk', '1.2.0'
    sw.requires_arc = true
    sw.frameworks = 'SystemConfiguration'
    sw.libraries = 'c++','z'
    sw.source_files = 'include/**/*.h'
    sw.ios.vendored_library = 'libs/libyyservicesdk.a'
  end
  s.subspec 'yyservicesdk-dynamic' do |sx|
    sx.dependency 'openssl-dynamic', '111.6718.0'
sx.dependency 'yyaccesstranssdk', '1.2.0'
    sx.requires_arc = true
    sx.frameworks = 'SystemConfiguration'
    sx.libraries = 'c++','z'
    sx.source_files = 'include/**/*.h'
    sx.ios.vendored_frameworks = 'libs/yyservicesdk_dynamic.framework'
  end
end
