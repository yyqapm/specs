Pod::Spec.new do |s|
  s.name         = 'yyaudiocodec_mac'
  s.version      = '1.0.3'
  s.summary      = 'yyaudiocodec_mac'
  s.homepage     = 'https://www.jocloud.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright jocloud Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'huyifeng' => 'huyifeng@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyaudiocodec_mac/1.0.3/yyaudiocodec_mac.zip" }

  s.default_subspec = 'yyaudiocodec_mac'
  s.subspec 'yyaudiocodec_mac' do |full|
    
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyaudiocodec_mac/libs"' }
    full.source_files = 'include/**/*.h','include/*.h'
    full.vendored_libraries = 'libs/libyyaudiocodec_mac.a'
    full.library = 'yyaudiocodec_mac'
  end

end
