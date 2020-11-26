Pod::Spec.new do |s|
    s.name = 'transvod'
    s.version = '8.8.164'
    s.authors = { 'Chen JunMing' => 'chenjunming@yy.com' }
    s.license = { :type => 'BSD', :text => <<-LICENSE
        Copyright © 2020 JOYY Inc. All rights reserved.
        LICENSE
    }
    s.homepage = 'http://sunclouds.com'
    s.source = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/transvod/8.8.164/transvod.zip" }
    s.summary = 'A media player for iOS'
   
    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.requires_arc = true

    s.default_subspec = 'transvod'
    s.frameworks = 'AVFoundation', 'Foundation', 'OpenGLES', 'VideoToolbox', 'UIKit'
    s.libraries = 'c++', 'objc', 'bz2', 'z', 'resolv'

    s.subspec 'transvod' do |ss|
        
        ss.vendored_frameworks = 'libs/transvod.framework'
        ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/transvod/libs/transvod.framework/Headers', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    end

    s.subspec 'transvodstatic' do |sz|
        
        sz.source_files = 'include/transvodstatic/*.h'
        sz.resource = 'resource/transvodbundle.bundle'
        sz.vendored_library = 'libs/libtransvodstatic.a'
        sz.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/transvod/include/transvodstatic', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/transvod/libs"' }
    end
end