Pod::Spec.new do |s|
  s.name         = 'thundermac'
  s.version      = '3.2.0'
  s.summary      = 'thundermac'
  s.homepage     = 'https://aivacom.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2020, All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'yypm@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/thundermac/3.2.0/thundermac.zip" }
  
  s.default_subspec = 'thunderboltmac'
  
  s.subspec 'thunderboltmac' do |full|
    full.platform = :osx, '10.9'
    full.osx.deployment_target = '10.9'
    full.dependency 'audioenginesdk/audioenginesdk_mac', '10.18.0'
full.dependency 'hydra/lite_macOS', '1.2.11'
full.dependency 'jobase/jobase-mac', '1.2.2'
full.dependency 'transengine/transengine-full-macOS', '3.2.0'
full.dependency 'yyvideolibmac', '1.0.29'
    full.requires_arc = true
    full.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thundermac/libs"' }
    full.source_files = 'include/thunderboltmac/*.h'
    full.vendored_libraries = 'libs/libthunderboltmac.a'
    full.libraries = 'z', 'thunderboltmac'
  end

  s.subspec 'thunderboltyymac' do |fullyy|
    fullyy.platform = :osx, '10.9'
    fullyy.osx.deployment_target = '10.9'
    fullyy.dependency 'audioenginesdk/audioenginesdk_mac', '10.18.0'
fullyy.dependency 'hydra/lite_macOS', '1.2.11'
fullyy.dependency 'jobase/jobase-mac', '1.2.2'
fullyy.dependency 'transengine/transengine-full-macOS', '3.2.0'
fullyy.dependency 'yyvideolibmac', '1.0.29'
    fullyy.requires_arc = true
    fullyy.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    fullyy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thundermac/libs"' }
    fullyy.source_files = 'include/thunderboltmac/*.h'
    fullyy.vendored_libraries = 'libs/libthunderboltyymac.a'
    fullyy.libraries = 'z', 'thunderboltyymac'
  end

  s.subspec 'thunderboltdynamicmac' do |dyfull|
    dyfull.platform = :osx, '10.9'
    dyfull.osx.deployment_target = '10.9'
    
    dyfull.requires_arc = true
    dyfull.frameworks = 'AudioUnit', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    dyfull.library = 'z'
    dyfull.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thundermac/libs/thunderboltdynamicmac.framework/Headers"' }
    dyfull.preserve_paths  = 'libs/thunderboltdynamicmac/thunderboltdynamicmac.framework'
    dyfull.osx.vendored_frameworks = 'libs/thunderboltdynamicmac.framework'
  end

end
