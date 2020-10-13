Pod::Spec.new do |s|

  s.name         = 'gamepublish'
  s.version      = '1.0.9-dev'
  s.summary      = 'gamepublish'
  s.homepage     = 'https://git.yy.com/apps/hago/GamePublish-ios'
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2010-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author       = { 'chengjiaming' => 'chengjiaming@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/gamepublish/1.0.9-dev/gamepublish.zip" }

  s.dependency 'AppsFlyerFramework', '5.4.3'
s.dependency 'FBSDKCoreKit', '6.5.2'
s.dependency 'FBSDKLoginKit', '6.5.2'
s.dependency 'GoogleSignIn', '5.0.2'
s.dependency 'Protobuf', '3.4.0'
s.dependency 'SSZipArchive', '1.8.1'
s.dependency 'deviceinfokit', '1.1.6'
s.dependency 'hdstatsdk', '3.2.62'
s.dependency 'openssl', '111.6721.0'
s.dependency 'yyantilib/yyantilibstd', '2.3.5'
s.dependency 'yyloginlitesdk/yyloginlitesdkhttp', '2.7.7'
  
  s.dependency   'MBProgressHUD'
  s.dependency   'Masonry'
  s.dependency   'RealReachability'
  s.dependency   'SDWebImage'
  s.dependency   'YYText'
  s.dependency   'libwebp'
  s.dependency   'AFNetworking'
  
  s.ios.deployment_target = '9.0'
  s.public_header_files = 'libs/GamePublish.framework/Headers/*.h'
  s.vendored_frameworks = 'libs/GamePublish.framework'
  s.resource = 'resource/GamePublish.bundle'
  s.libraries = 'sqlite3.0'

end
