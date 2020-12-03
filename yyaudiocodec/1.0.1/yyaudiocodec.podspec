Pod::Spec.new do |s|
  s.name         = 'yyaudiocodec'
  s.version      = '1.0.1'
  s.summary      = 'yyaudiocodec'
  s.homepage     = 'https://www.jocloud.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright jocloud Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'huyifeng' => 'huyifeng@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyaudiocodec/1.0.1/yyaudiocodec.zip" }

  s.default_subspec = 'yyaudiocodec'
  s.subspec 'yyaudiocodec' do |full|
    
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyaudiocodec/libs"' }
    full.source_files = 'include/**/*.h','include/*.h'
    full.vendored_libraries = 'libs/libyyaudiocodec.a'
    full.library = 'yyaudiocodec'
  end

end
