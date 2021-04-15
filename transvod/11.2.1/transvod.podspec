Pod::Spec.new do |s|
    s.name = 'transvod'
    s.version = '11.2.1'
    s.authors = { 'Chen JunMing' => 'chenjunming@yy.com' }
    s.license = { :type => 'BSD', :text => <<-LICENSE
        Copyright © 2020 JOYY Inc. All rights reserved.
        LICENSE
    }
    s.homepage = 'http://sunclouds.com'
    s.source = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/transvod/11.2.1/transvod.zip" }
    s.summary = 'A media player for iOS'
   
    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.requires_arc = true

    s.default_subspec = 'transvod'
    s.frameworks = 'AVFoundation', 'Foundation', 'OpenGLES', 'Metal', 'VideoToolbox', 'UIKit', 'CoreTelephony', 'Accelerate', 'SystemConfiguration'
    s.libraries = 'c++', 'objc', 'bz2', 'z', 'resolv'

    s.subspec 'transvod' do |ss|
        
        ss.source_files = 'libs/transvod.framework/Headers/*.h'
        ss.vendored_frameworks = 'libs/transvod.framework'
        ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/transvod/libs/transvod.framework/Headers', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    end

    s.subspec 'transvodstatic' do |sz|
        sz.dependency 'ffmpeg/ffmpeg-332-ios', '1.0.6'
sz.dependency 'libyuv', '1.0.5'
sz.dependency 'openssl', '111.6721.0'
sz.dependency 'rtshare', '1.0.5'
sz.dependency 'yydec265', '1.0.12'
        sz.source_files = 'include/transvodstatic/*.h'
        sz.vendored_library = 'libs/libtransvodstatic.a'
        sz.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/transvod/include/transvodstatic', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/transvod/libs"' }
    end
end