#
# Be sure to run `pod lib lint audiosuper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'audiodenoise'
    s.version          = '3.0.6'
    s.summary          = 'AI audio denoise'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://git.yy.com/midwares/dwmobile/audiodenoise'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'daichangjun' => 'daichangjun@yy.com' }
    s.source           = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/audiodenoise/3.0.6/audiodenoise.zip" }
    
    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.10'

    s.subspec 'audiodenoise-iOS' do |s_ios|
        s_ios.ios.vendored_libraries = 'libs/libaudiodenoise-iOS.a'
        s_ios.preserve_paths = 'libs/*.a'
        s_ios.source_files  = "include/*.h"
        s_ios.resources = 'resource/*'
        s_ios.libraries = 'audiodenoise-iOS', 'c++'
        s_ios.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiodenoise/include','LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/audiodenoise/libs"' }
        s_ios.dependency 'venus/audiodnoise-static', '1.8.16'     
        
    end

    s.subspec 'audiodenoise-macOS' do |s_macOS|
        s_macOS.osx.vendored_libraries = 'libs/libaudiodenoise-macOS.a'
        s_macOS.preserve_paths = 'libs/*.a'
        s_macOS.source_files  = "include/*.h"
        s_macOS.resources = 'resource/*'
        s_macOS.libraries = 'audiodenoise-macOS', 'c++'
        s_macOS.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audiodenoise/include','LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/audiodenoise/libs"' }
        s_macOS.dependency 'venusMacos', '1.0.3'     
        
    end

end
