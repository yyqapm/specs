Pod::Spec.new do |s|
  s.name         = 'thunder'
  s.version      = '3.4.167'
  s.summary      = 'thunder'
  s.homepage     = 'https://www.jocloud.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright jocloud Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'jocloud' => 'marketing@jocloud.com' }
  s.source       = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/thunder/3.4.167/thunder.zip" }

  s.default_subspec = 'thunderbolt'
  s.subspec 'thunderbolt' do |full|
    full.platform = :ios, '4.3'
    full.ios.deployment_target = '4.3'
    full.dependency 'dwx265', '2.0.4'
full.dependency 'ffmpeg/ffmpeg-332-ios', '1.0.7'
full.dependency 'jobase/jobase', '1.3.160'
full.dependency 'libvpx', '1.0.3'
full.dependency 'libyuv', '1.0.2'
full.dependency 'transengine/transengine-full', '3.4.164'
full.dependency 'yyaudiosdk', '3.4.166'
full.dependency 'yydec265', '1.0.12'
full.dependency 'yyvideolib/yyvideolibstatic_nobeauty', '3.4.163'
    full.requires_arc = true
    full.frameworks = 'VideoToolbox'
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    full.source_files = 'include/thunderbolt/*.h'
    full.vendored_libraries = 'libs/libthunderbolt.a'
    full.library = 'thunderbolt'
  end
  
  s.subspec 'thunderbolt_static' do |full_static|
    full_static.platform = :ios, '4.3'
    full_static.ios.deployment_target = '4.3'
    
    full_static.requires_arc = true
    full_static.frameworks = 'VideoToolbox'
    full_static.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    full_static.source_files = 'include/thunderbolt/*.h'
    full_static.vendored_libraries = 'libs/libthunderbolt.a'
    full_static.library = 'thunderbolt'
  end

  s.subspec 'thunderbolt_baidu' do |baidu_static|
    baidu_static.platform = :ios, '4.3'
    baidu_static.ios.deployment_target = '4.3'
    
    baidu_static.requires_arc = true
    baidu_static.frameworks = 'VideoToolbox'
    baidu_static.resource = 'resource/yyvideolib.bundle'
    baidu_static.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    baidu_static.source_files = 'include/thunderbolt/*.h'
    baidu_static.vendored_libraries = 'libs/libthunderbolt.a', 'libs/libthunder_deps.a'
    baidu_static.library = 'thunderbolt', 'thunder_deps'
  end

  s.subspec 'thunderbolt_baidu_debug' do |baidu_static_debug|
    baidu_static_debug.platform = :ios, '4.3'
    baidu_static_debug.ios.deployment_target = '4.3'
    
    baidu_static_debug.requires_arc = true
    baidu_static_debug.frameworks = 'VideoToolbox'
    baidu_static_debug.resource = 'resource/yyvideolib.bundle'
    baidu_static_debug.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    baidu_static_debug.source_files = 'include/thunderbolt/*.h'
    baidu_static_debug.vendored_libraries = 'libs/libthunderbolt.a'
    baidu_static_debug.library = 'thunderbolt'
  end

  s.subspec 'thunderbolt_baidu_ai' do |baidu_static_ai|
    baidu_static_ai.platform = :ios, '4.3'
    baidu_static_ai.ios.deployment_target = '4.3'
    
    baidu_static_ai.requires_arc = true
    baidu_static_ai.frameworks = 'VideoToolbox'
    baidu_static_ai.resource = 'resource/yyvideolib.bundle'
    baidu_static_ai.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    baidu_static_ai.source_files = 'include/thunderbolt/*.h'
    baidu_static_ai.vendored_libraries = 'libs/libthunderbolt.a'
    baidu_static_ai.library = 'thunderbolt'
  end

  s.subspec 'thunderbolt_ai' do |fullai|
    fullai.platform = :ios, '4.3'
    fullai.ios.deployment_target = '4.3'
    fullai.dependency 'dwx265', '2.0.4'
fullai.dependency 'ffmpeg/ffmpeg-332-ios', '1.0.7'
fullai.dependency 'jobase/jobase', '1.3.160'
fullai.dependency 'libvpx', '1.0.3'
fullai.dependency 'libyuv', '1.0.2'
fullai.dependency 'tnn/tnn_core', '1.0.7'
fullai.dependency 'tnn/vfi', '1.0.7'
fullai.dependency 'transengine/transengine-full', '3.4.164'
fullai.dependency 'yyaudiosdk/yyaudiosdk_ai', '3.4.166'
fullai.dependency 'yydec265', '1.0.12'
fullai.dependency 'yyvideolib/yyvideolibstaticai_nobeauty', '3.4.163'
    fullai.requires_arc = true
    fullai.frameworks = 'VideoToolbox'
    fullai.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    fullai.source_files = 'include/thunderbolt/*.h'
    fullai.vendored_libraries = 'libs/libthunderbolt.a'
    fullai.library = 'thunderbolt'
  end

  s.subspec 'thunderbolt_videoai' do |videoai|
    videoai.platform = :ios, '4.3'
    videoai.ios.deployment_target = '4.3'
    videoai.dependency 'dwx265', '2.0.4'
videoai.dependency 'ffmpeg/ffmpeg-332-ios', '1.0.7'
videoai.dependency 'jobase/jobase', '1.3.160'
videoai.dependency 'libvpx', '1.0.3'
videoai.dependency 'libyuv', '1.0.2'
videoai.dependency 'tnn/tnn_core', '1.0.7'
videoai.dependency 'tnn/vfi', '1.0.7'
videoai.dependency 'transengine/transengine-full', '3.4.164'
videoai.dependency 'yyaudiosdk', '3.4.166'
videoai.dependency 'yydec265', '1.0.12'
videoai.dependency 'yyvideolib/yyvideolibstaticai_nobeauty', '3.4.163'
    videoai.requires_arc = true
    videoai.frameworks = 'VideoToolbox'
    videoai.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    videoai.source_files = 'include/thunderbolt/*.h'
    videoai.vendored_libraries = 'libs/libthunderbolt.a'
    videoai.library = 'thunderbolt'
  end

  s.subspec 'thunderboltyy' do |fullyy|
    fullyy.platform = :ios, '4.3'
    fullyy.ios.deployment_target = '4.3'
    
    fullyy.requires_arc = true
    fullyy.frameworks = 'VideoToolbox'
    fullyy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    fullyy.source_files = 'include/thunderbolt/*.h'
    fullyy.vendored_libraries = 'libs/libthunderboltyy.a'
    fullyy.library = 'thunderboltyy'
  end

  s.subspec 'thunder' do |audio|
    audio.platform = :ios, '4.3'
    audio.ios.deployment_target = '4.3'
    audio.dependency 'jobase/jobase', '1.3.160'
audio.dependency 'transengine/transengine-audio', '3.4.164'
audio.dependency 'yyaudiosdk', '3.4.166'
    audio.requires_arc = true
    audio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
    audio.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    audio.source_files = 'include/thunder/*.h'
    audio.vendored_libraries = 'libs/libthunder.a'
    audio.libraries = 'thunder'
    end
    
  s.subspec 'thunder_ai' do |audioai|
    audioai.platform = :ios, '4.3'
    audioai.ios.deployment_target = '4.3'
    audioai.dependency 'jobase/jobase', '1.3.160'
audioai.dependency 'transengine/transengine-audio', '3.4.164'
audioai.dependency 'yyaudiosdk/yyaudiosdk_ai', '3.4.166'
    audioai.requires_arc = true
    audioai.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
    audioai.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    audioai.source_files = 'include/thunder/*.h'
    audioai.vendored_libraries = 'libs/libthunder.a'
    audioai.libraries = 'thunder'
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
  
  s.subspec 'thunderboltdynamic_ai' do |dyfullai|
    dyfullai.platform = :ios, '4.3'
    dyfullai.ios.deployment_target = '4.3'
    
    dyfullai.requires_arc = true
    dyfullai.frameworks = 'VideoToolbox'
    dyfullai.resources= 'libs/thunderbolt_ai_dynamic.framework/*.vnmodel'
    dyfullai.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thunder/libs/thunderbolt_ai_dynamic.framework/Headers"' }
    dyfullai.preserve_paths  = 'libs/thunderboltdynamic_ai/thunderbolt_ai_dynamic.framework'
    dyfullai.ios.vendored_frameworks = 'libs/thunderbolt_ai_dynamic.framework'
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
  
  s.subspec 'thunderboltlite_ai' do |dyliteai|
    dyliteai.platform = :ios, '4.3'
    dyliteai.ios.deployment_target = '4.3'
    
    dyliteai.requires_arc = true
    dyliteai.frameworks = 'VideoToolbox'
    dyliteai.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thunder/libs/thunderboltlite_ai.framework/Headers"' }
    dyliteai.preserve_paths  = 'libs/thunderboltlite_ai/thunderboltlite_ai.framework'
    dyliteai.ios.vendored_frameworks = 'libs/thunderboltlite_ai.framework'
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
  
  s.subspec 'thunderdynamic_ai' do |dyaudioai|
    dyaudioai.platform = :ios, '4.3'
    dyaudioai.ios.deployment_target = '4.3'
    
    dyaudioai.requires_arc = true
    dyaudioai.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
    dyaudioai.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thunder/libs/thunder_ai_dynamic.framework/Headers"' }
    dyaudioai.preserve_paths  = 'libs/thunderdynamic_ai/thunder_ai_dynamic.framework'
    dyaudioai.ios.vendored_frameworks = 'libs/thunder_ai_dynamic.framework'
  end

  s.subspec 'thunderboltmac' do |fullmac|
    fullmac.platform = :osx, '10.9'
    fullmac.osx.deployment_target = '10.9'
    
    fullmac.requires_arc = true
    fullmac.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    fullmac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    fullmac.source_files = 'include/thunderboltmac/*.h'
    fullmac.vendored_libraries = 'libs/libthunderboltmac.a'
    fullmac.libraries = 'z', 'thunderboltmac'
  end
  
  s.subspec 'thunderboltmacai' do |fullaimac|
    fullaimac.platform = :osx, '10.9'
    fullaimac.osx.deployment_target = '10.9'
    
    fullaimac.requires_arc = true
    fullaimac.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    fullaimac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    fullaimac.source_files = 'include/thunderboltmac/*.h'
    fullaimac.vendored_libraries = 'libs/libthunderboltmac.a'
    fullaimac.libraries = 'z', 'thunderboltmac'
  end

  s.subspec 'thunderboltyymac' do |fullyymac|
    fullyymac.platform = :osx, '10.9'
    fullyymac.osx.deployment_target = '10.9'
    
    fullyymac.requires_arc = true
    fullyymac.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    fullyymac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    fullyymac.source_files = 'include/thunderboltmac/*.h'
    fullyymac.vendored_libraries = 'libs/libthunderboltyymac.a'
    fullyymac.libraries = 'z', 'thunderboltyymac'
  end
  
  s.subspec 'thunderboltyymacai' do |fullyyaimac|
    fullyyaimac.platform = :osx, '10.9'
    fullyyaimac.osx.deployment_target = '10.9'
    
    fullyyaimac.requires_arc = true
    fullyyaimac.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    fullyyaimac.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
    fullyyaimac.source_files = 'include/thunderboltmac/*.h'
    fullyyaimac.vendored_libraries = 'libs/libthunderboltyymac.a'
    fullyyaimac.libraries = 'z', 'thunderboltyymac'
  end

  s.subspec 'thunderboltdynamicmac' do |dyfullmac|
    dyfullmac.platform = :osx, '10.9'
    dyfullmac.osx.deployment_target = '10.9'
    
    dyfullmac.requires_arc = true
    dyfullmac.frameworks = 'AudioUnit', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    dyfullmac.library = 'z'
    dyfullmac.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thunder/libs/thunderboltdynamicmac.framework/Headers"' }
    dyfullmac.preserve_paths  = 'libs/thunderboltdynamicmac/thunderboltdynamicmac.framework'
    dyfullmac.osx.vendored_frameworks = 'libs/thunderboltdynamicmac.framework'
  end
  
  s.subspec 'thunderboltdynamicmacai' do |dyfullaimac|
    dyfullaimac.platform = :osx, '10.9'
    dyfullaimac.osx.deployment_target = '10.9'
    
    dyfullaimac.requires_arc = true
    dyfullaimac.frameworks = 'AudioUnit', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    dyfullaimac.library = 'z'
    dyfullaimac.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thunder/libs/thunderboltdynamicmacai.framework/Headers"' }
    dyfullaimac.preserve_paths  = 'libs/thunderboltdynamicmacai/thunderboltdynamicmacai.framework'
    dyfullaimac.osx.vendored_frameworks = 'libs/thunderboltdynamicmacai.framework'
  end

end
