Pod::Spec.new do |s|
  s.name         = 'thundermac'
  s.version      = '2.9.16'
  s.summary      = 'thundermac'
  s.homepage     = 'https://aivacom.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2020, All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'yypm@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/thundermac/2.9.16/thundermac.zip" }
  
  s.default_subspec = 'thunderboltmac'
  
  s.subspec 'thunderboltmac' do |full|
    full.platform = :osx, '10.9'
    full.osx.deployment_target = '10.9'
    full.dependency 'argo/argomac', '~> 3.1.0'
full.dependency 'audioenginesdk/audioenginesdk_mac', '10.15.2'
full.dependency 'gslbmac', '1.0.0'
full.dependency 'spidercrab/spidercrab_macOS', '~> 1.2.0'
full.dependency 'transengine/transengine-full-macOS', '2.9.14'
full.dependency 'yyservicesdk/yyservicesdkmaclib', '~> 3.3.1'
full.dependency 'yyvideolibmac', '1.0.13'
    full.requires_arc = true
    full.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thundermac/libs"' }
    full.source_files = 'include/thunderboltmac/*.h'
    full.vendored_libraries = 'libs/libthunderboltmac.a'
    full.libraries = 'z', 'thunderboltmac'
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
