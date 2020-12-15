Pod::Spec.new do |s|
  s.name         = "venusMacos"
  s.version      = "1.0.3"
  s.summary      = "A short description of venusmacos."
  s.description  = "here"                  
  s.homepage     = "https://www.mkl.com"  
  s.license      = "MIT"
  s.author       = { "Mo Yuda" => "moyuda@yy.com", "Li Xinyu" => "lixinyu2@yy.com", "Zhang Yao" => "zhangyao@yy.com"}        
  s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/venusMacos/1.0.3/venusMacos.zip"}
  s.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venusMacos/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venusMacos/libs" }
  s.source_files         = 'include/**/*.h'
  s.preserve_paths       = 'libs/**/*.a'                
  s.libraries            = 'vn_core_macOS', 'vn_cnn_macOS', 'vn_face_macOS', 'vn_audiodenoise_macOS'
  s.macos.deployment_target = '10.10'
  s.vendored_frameworks     = 'Accelerate.framework/Accelerate.tbd'  
  s.macos.vendored_libraries = 'libs/*.a','c++' 
  s.frameworks = 'Accelerate'
end
