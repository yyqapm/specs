Pod::Spec.new do |s|
  s.name         = 'thunder'
  s.version      = '3.0.1'
  s.summary      = 'thunder'
  s.homepage     = 'https://www.jocloud.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright jocloud Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'jocloud' => 'marketing@jocloud.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/thunder/3.0.1/thunder.zip" }

  s.default_subspec = 'thunderbolt'
  s.subspec 'thunderbolt' do |full|
    full.platform = :ios, '4.3'
    full.ios.deployment_target = '4.3'
    full.dependency 'argo', '~> 3.1.0'
full.dependency 'audioenginesdk', '10.16.3'
full.dependency 'ffmpeg/ffmpeg-332-ios', '1.0.1'
full.dependency 'gslb', '1.0.15'
full.dependency 'hydra/lite', '1.1.5'
full.dependency 'ittiamhevc', '0500.6803.0'
full.dependency 'jobase/jobase', '1.0.1'
full.dependency 'jolog/jolog-lite', '1.0.4'
full.dependency 'libvpx', '1.0.0'
full.dependency 'libyuv', '1194.5004.0'
full.dependency 'transengine/transengine-full', '3.0.1'
full.dependency 'yyvideolib/yyvideolibstatic_nobeauty', '100.8.1'
    full.requires_arc = true
    full.frameworks = 'VideoToolbox'
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    full.source_files = 'include/thunderbolt/*.h'
    full.vendored_libraries = 'libs/libthunderbolt.a'
    full.library = 'thunderbolt'
  end

  s.subspec 'thunder' do |audio|
    audio.platform = :ios, '4.3'
    audio.ios.deployment_target = '4.3'
    audio.dependency 'argo', '~> 3.1.0'
audio.dependency 'audioenginesdk', '10.16.3'
audio.dependency 'gslb', '1.0.15'
audio.dependency 'hydra/lite', '1.1.5'
audio.dependency 'jobase/jobase', '1.0.1'
audio.dependency 'jolog/jolog-lite', '1.0.4'
audio.dependency 'transengine/transengine-audio', '3.0.1'
    audio.requires_arc = true
    audio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
    audio.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    audio.source_files = 'include/thunder/*.h'
    audio.vendored_libraries = 'libs/libthunder.a'
    audio.libraries = 'thunder'
    end

  s.subspec 'thunderboltdynamic' do |dyfull|
    dyfull.platform = :ios, '4.3'
    dyfull.ios.deployment_target = '4.3'
    
    dyfull.requires_arc = true
    dyfull.frameworks = 'VideoToolbox'
    dyfull.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thunder/libs/thunderboltdynamic.framework/Headers"' }
    dyfull.preserve_paths  = 'libs/thunderboltdynamic/thunderboltdynamic.framework'
    dyfull.ios.vendored_frameworks = 'libs/thunderboltdynamic.framework'
  end

  s.subspec 'thunderboltlite' do |dylite|
    dylite.platform = :ios, '4.3'
    dylite.ios.deployment_target = '4.3'
    
    dylite.requires_arc = true
    dylite.frameworks = 'VideoToolbox'
    dylite.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thunder/libs/thunderboltlite.framework/Headers"' }
    dylite.preserve_paths  = 'libs/thunderboltlite/thunderboltlite.framework'
    dylite.ios.vendored_frameworks = 'libs/thunderboltlite.framework'
  end

  s.subspec 'thunderdynamic' do |dyaudio|
    dyaudio.platform = :ios, '4.3'
    dyaudio.ios.deployment_target = '4.3'
    
    dyaudio.requires_arc = true
    dyaudio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
    dyaudio.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thunder/libs/thunderdynamic.framework/Headers"' }
    dyaudio.preserve_paths  = 'libs/thunderdynamic/thunderdynamic.framework'
    dyaudio.ios.vendored_frameworks = 'libs/thunderdynamic.framework'
  end
end
