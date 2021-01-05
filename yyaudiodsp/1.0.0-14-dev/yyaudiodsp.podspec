Pod::Spec.new do |s|
  s.name         = 'yyaudiodsp'
  s.version      = '1.0.0-14-dev'
  s.summary      = 'yyaudiodsp'
  s.homepage     = 'https://www.jocloud.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright jocloud Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'sujiachang' => 'sujiachang@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyaudiodsp/1.0.0-14-dev/yyaudiodsp.zip" }

  s.default_subspec = 'yyaudiodsp'
  s.subspec 'yyaudiodsp' do |full|
    
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyaudiodsp/libs"' }
    full.source_files = 'include/**/*.h','include/*.h'
    full.vendored_libraries = 'libs/libyyaudiodsp.a'
    full.library = 'yyaudiodsp'
  end

end
