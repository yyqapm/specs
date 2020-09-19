Pod::Spec.new do |s|
  s.name         = 'hydra'
  s.version      = '1.2.0'
  s.summary      = 'Hydra'
  s.homepage     = 'http://sunclouds.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2020 YY Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'zhanglonghua@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/hydra/1.2.0/hydra.zip" }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
 
  s.default_subspec = 'hydra'
  s.subspec 'hydra' do |sc| 
    sc.source_files = 'include/**/*.h'
    sc.header_mappings_dir = './include'
    sc.ios.vendored_frameworks      = 'libs/Hydra.framework'
    sc.frameworks 				    = 'Foundation'
    sc.libraries   				    = 'z', 'c++'
    sc.xcconfig 				    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hydra/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hydra/libs/Hydra.framework/Headers"' }
    sc.dependency 'deviceinfokit', '~> 1.1.0'
sc.dependency 'jobase', '1.0.2'
sc.dependency 'jodns', '1.0.2'
sc.dependency 'openssl-medusatrans', '111.6729.0'
  end
  
  s.subspec 'lite' do |sl| 
    sl.source_files = 'include/**/*.h'
    sl.header_mappings_dir = './include'
    sl.ios.vendored_frameworks      = 'libs/HydraLite.framework'
    sl.frameworks 				    = 'Foundation'
    sl.libraries   				    = 'z', 'c++'
    sl.xcconfig 				    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hydra/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hydra/libs/HydraLite.framework/Headers"' }
    sl.dependency 'deviceinfokit', '~> 1.1.0'
sl.dependency 'jobase', '1.0.2'
sl.dependency 'jodns', '1.0.2'
  end

  s.subspec 'hydra_macOS' do |sc_macOS| 
    sc_macOS.source_files = 'include/**/*.h'
    sc_macOS.header_mappings_dir = './include'
    sc_macOS.osx.vendored_frameworks    = 'libs/Hydra_macOS.framework'
    sc_macOS.frameworks 			    = 'Foundation'
    sc_macOS.libraries   			    = 'z', 'c++'
    sc_macOS.xcconfig 				    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hydra/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hydra/libs/Hydra_macOS.framework/Headers"' }
    sc_macOS.dependency 'deviceinfokit/deviceinfokitmacOS', '~> 1.1.0'
sc_macOS.dependency 'jobase/jobase-mac', '1.0.2'
sc_macOS.dependency 'jodns/jodns-mac', '1.0.2'
sc_macOS.dependency 'opensslOSX', '111.8.0'
  end

  s.subspec 'lite_macOS' do |sl_macOS| 
    sl_macOS.source_files = 'include/**/*.h'
    sl_macOS.header_mappings_dir = './include'
    sl_macOS.osx.vendored_frameworks      = 'libs/HydraLite_macOS.framework'
    sl_macOS.frameworks 				    = 'Foundation'
    sl_macOS.libraries   				    = 'z', 'c++'
    sl_macOS.xcconfig 				    = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Hydra/libs"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Hydra/libs/HydraLite_macOS.framework/Headers"' }
    sl_macOS.dependency 'deviceinfokit/deviceinfokitmacOS', '~> 1.1.0'
sl_macOS.dependency 'jobase/jobase-mac', '1.0.2'
sl_macOS.dependency 'jodns/jodns-mac', '1.0.2'
  end
end
