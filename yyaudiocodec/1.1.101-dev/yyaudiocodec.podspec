Pod::Spec.new do |s|
  s.name         = 'yyaudiocodec'
  s.version      = '1.1.101-dev'
  s.summary      = 'yyaudiocodec'
  s.homepage     = 'https://www.jocloud.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright jocloud Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'huyifeng' => 'huyifeng@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyaudiocodec/1.1.101-dev/yyaudiocodec.zip" }

  s.default_subspec = 'yyaudiocodec'
  s.subspec 'yyaudiocodec' do |full|
    
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyaudiocodec/libs"' }
    full.source_files = 'include/**/*.h','include/*.h'
    full.vendored_libraries = 'libs/libyyaudiocodec.a'
    full.library = 'yyaudiocodec'
  end

  s.subspec 'yyaudiocodec_bd' do |full_bd|
    
    full_bd.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyaudiocodec/libs"' }
    full_bd.source_files = 'include/**/*.h','include/*.h'
    full_bd.vendored_libraries = 'libs/libyyaudiocodec_bd.a'
    full_bd.library = 'yyaudiocodec_bd'
  end

  s.subspec 'opus_bd' do |opus_bd|
    
    opus_bd.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyaudiocodec/libs"' }
    opus_bd.source_files = 'include/**/*.h','include/*.h'
    opus_bd.vendored_libraries = 'libs/libopus.a'
    opus_bd.library = 'opus'
  end

end
