Pod::Spec.new do |s|
        s.name                  = "venus"
        s.version               = "1.8.16"
        s.summary               = "Venus is an iOS perbuilt cnn lib for ios/android/pc and it containts some cnn applications using venus."
        s.license               = {:type => 'BSD-licensed'}
        s.homepage              = "http://code.yy.com/moyuda"
        s.author                = { "Mo Yuda" => "moyuda@yy.com", "Li Xinyu" => "lixinyu2@yy.com", "Zhang Yao" => "zhangyao@yy.com"}
        
        s.source                = {:http =>"https://cirepo.bs2dl.yy.com/sdks/ios/venus/1.8.16/venus.zip"}
        
           s.platform              = :ios, '8.0'

        s.frameworks            = 'Accelerate','CoreMedia','CoreVideo','OpenGLES','QuartzCore','AVFoundation','UIKit','Foundation','CoreGraphics','CoreImage','GLKit','Metal','MetalKit','MetalPerformanceShaders'
        
        s.default_subspec = 'venus-all'

        s.subspec 'venus-all' do |ss0|
                ss0.source_files                = 'include/**/*.h'
                ss0.preserve_paths       = 'libs/**/*.framework'
                ss0.ios.vendored_frameworks = 'libs/*.framework'
                ss0.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end
        
        s.subspec 'venus-all-ncv' do |ss1|
                ss1.source_files                = 'include/**/*.h'
                ss1.preserve_paths       = 'libs/**/*.framework'
                ss1.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_kits.framework','libs/vn_cnn.framework','libs/vn_seg.framework','libs/vn_sbseg.framework','libs/vn_gesture.framework','libs/vn_bodylandmark.framework','libs/vn_face.framework','libs/vn_sr.framework','libs/vn_resources.framework','libs/vn_hairseg.framework','libs/vn_headseg.framework','libs/vn_skyseg.framework','libs/vn_clothesseg.framework'
                ss1.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

        s.subspec 'venus-all-static' do |ss12|
                ss12.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss12.source_files         = 'include/**/*.h'
                ss12.preserve_paths       = 'libs/**/*.a'                
                ss12.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_kits_static', 'vn_resources_static', 'vn_gesture_static', 'vn_seg_static', 'vn_sbseg_static', 'vn_bodylandmark_static', 'vn_face_static', 'vn_asr_static', 'vn_hairseg_static','vn_skyseg_static','vn_clothesseg_static'
                s.vendored_frameworks     = 'Accelerate.framework/Accelerate.tbd'
                ss12.ios.vendored_libraries = 'libs/*.a','c++'                
        end

        s.subspec 'venus-seg' do |ss2|
                ss2.source_files                = 'include/**/*.h'
                ss2.preserve_paths       = 'libs/**/*.framework'
                ss2.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_cnn.framework','libs/vn_seg.framework'
                ss2.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

        s.subspec 'venus-sbseg' do |ss3|
                ss3.source_files                = 'include/**/*.h'
                ss3.preserve_paths       = 'libs/**/*.framework'
                ss3.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_cnn.framework','libs/vn_seg.framework','libs/vn_sbseg.framework'
                ss3.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

        s.subspec 'venus-gesture' do |ss4|
                ss4.source_files                = 'include/**/*.h'
                ss4.preserve_paths       = 'libs/**/*.framework'
                ss4.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_cnn.framework','libs/vn_gesture.framework'
                ss4.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

        s.subspec 'venus-bodylandmark' do |ss5|
                ss5.source_files                = 'include/**/*.h'
                ss5.preserve_paths       = 'libs/**/*.framework'
                ss5.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_cnn.framework','libs/vn_bodylandmark.framework'
                ss5.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

        s.subspec 'venus-sr' do |ss6|
                ss6.source_files                = 'include/**/*.h'
                ss6.preserve_paths       = 'libs/**/*.framework'
                ss6.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

        s.subspec 'venus-resources' do |ss13|
                ss13.source_files                = 'include/**/*.h'
                ss13.preserve_paths       = 'libs/**/*.framework'                
                ss13.ios.resource_bundle = { "vn_resources" => "libs/vn_resources.framework/default.metallib" }
                ss13.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

         s.subspec 'venus-seg-static' do |ss7|
                ss7.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss7.source_files         = 'include/**/*.h'
                ss7.preserve_paths       = 'libs/**/*.a'                                                
                ss7.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_seg_static'
                ss7.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_seg_static.a'
        end

        s.subspec 'venus-sbseg-static' do |ss8|
                ss8.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss8.source_files         = 'include/**/*.h'
                ss8.preserve_paths       = 'libs/**/*.a'
                ss8.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_seg_static'
                ss8.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_sbseg_static.a'
        end
        
        s.subspec 'venus-gesture-static' do |ss9|
                ss9.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss9.source_files         = 'include/**/*.h'
                ss9.preserve_paths       = 'libs/**/*.a'
                ss9.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_gesture_static'
                ss9.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_gesture_static.a'
        end

        s.subspec 'venus-bodylandmark-static' do |ss10|
                ss10.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss10.source_files         = 'include/**/*.h'
                ss10.preserve_paths       = 'libs/**/*.a'
                ss10.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_bodylandmark_static'
                ss10.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_bodylandmark_static.a'
        end
        
        s.subspec 'venus-seg-gesture-static' do |ss11|
                ss11.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss11.source_files         = 'include/**/*.h'
                ss11.preserve_paths       = 'libs/**/*.a'
                ss11.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_gesture_static','vn_seg_static'
                ss11.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_gesture_static.a', 'libs/libvn_seg_static.a'
        end
        
        s.subspec 'venus-gesture-ncv-static' do |ss14|
                ss14.xcconfig               = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss14.source_files           = 'include/**/*.h'
                ss14.preserve_paths         = 'libs/**/*.a'
                ss14.libraries              = 'vn_core_static', 'vn_cnn_static', 'vn_gesture_static'
                ss14.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_gesture_static.a'
                ss14.ios.resource_bundle = { "vn_resources" => "libs/vn_resources.framework/default.metallib" }
        end    

         s.subspec 'venus-resources-static' do |ss15|        
                ss15.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss15.source_files          = 'include/**/*.h'
                ss15.preserve_paths        = 'libs/**/*.a'  
                ss15.ios.resource_bundle = { "vn_resources" => "libs/vn_resources.framework/default.metallib" }
        end    

        s.subspec 'venus-yy' do |ss16|
                ss16.source_files                = 'include/**/*.h'
                ss16.preserve_paths       = 'libs/**/*.framework'
                ss16.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_kits.framework','libs/vn_cnn.framework','libs/vn_gesture.framework','libs/vn_face.framework','libs/vn_resources.framework'
                ss16.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

          s.subspec 'venus-yy-static' do |ss17|
                ss17.ios.resource_bundle = { "vn_resources" => "libs/vn_resources.framework/default.metallib" }
                ss17.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss17.source_files         = 'include/**/*.h'
                ss17.preserve_paths       = 'libs/**/*.a'                                                
                ss17.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_kits_static', 'vn_resources_static', 'vn_gesture_static','vn_face_static'
                ss17.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_kits_static.a','libs/libvn_face_static.a', 'libs/libvn_resources_static.a', 'libs/libvn_gesture_static.a'
        end
        
        s.subspec 'all-shared' do |ss22|
                ss22.source_files               = 'include/**/*.h'
                ss22.preserve_paths             = 'libs/**/*.framework'
                ss22.ios.vendored_frameworks    = 'libs/*.framework'
                ss22.xcconfig                   = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end
        
        s.subspec 'all-static' do |ss23|
                ss23.ios.resource_bundle = { "vn_resources" => "libs/vn_resources.framework/default.metallib" }
                ss23.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss23.source_files         = 'include/**/*.h'
                ss23.preserve_paths       = 'libs/**/*.a'                                                
                ss23.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_kits_static', 'vn_resources_static', 'vn_gesture_static', 'vn_seg_static', 'vn_sbseg_static', 'vn_bodylandmark_static', 'vn_face_static', 'vn_asr_static', 'vn_hairseg_static', 'vn_new_gesture_static','libvn_headseg_static'
                ss23.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_kits_static.a', 'libs/libvn_asr_static.a', 'libs/libvn_seg_static.a', 'libs/libvn_sbseg_static.a', 'libs/libvn_bodylandmark_static.a', 'libs/libvn_face_static.a', 'libs/libvn_resources_static.a', 'libs/libvn_gesture_static.a', 'libs/libvn_new_gesture_static.a', 'libs/vn_hairseg_static.a','libs/vn_headseg_static'
        end 

        s.subspec 'asr-c-static' do |ss24|
                ss24.xcconfig               = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss24.source_files           = 'include/**/*.h'
                ss24.preserve_paths         = 'libs/**/*.a'                                                
                ss24.libraries              = 'vn_core_static', 'vn_asr_static'
                ss24.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_asr_static.a'
        end
        
        s.subspec 'audiodnoise-static' do |ss25|
                ss25.xcconfig               = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss25.source_files           = 'include/**/*.h'
                ss25.preserve_paths         = 'libs/**/*.a'                                                
                ss25.libraries              = 'vn_core_static', 'vn_audiodenoise_static', 'vn_kits_static', 'vn_cnn_static', 'vn_resources_static'
                ss25.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_audiodenoise_static.a', 'libs/libvn_kits_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_resources_static.a'
        end

        s.subspec 'me-static' do |ss26|
                ss26.xcconfig               = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss26.source_files           = 'include/**/*.h'
                ss26.preserve_paths         = 'libs/**/*.a'                                                
                ss26.libraries              = 'vn_core_static', 'vn_face_static', 'vn_audiodenoise_static', 'vn_kits_static', 'vn_cnn_static', 'vn_resources_static'
                ss26.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_face_static.a','libs/libvn_audiodenoise_static.a', 'libs/libvn_kits_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_resources_static.a'
        end

        s.subspec 'me' do |ss27|
                ss27.source_files                = 'include/**/*.h'
                ss27.preserve_paths       = 'libs/**/*.framework'
                ss27.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_kits.framework','libs/vn_cnn.framework','libs/vn_audiodenoise.framework','libs/vn_face.framework','libs/vn_resources.framework'
                ss27.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

        s.subspec 'vn-face' do |ss28|
                ss28.xcconfig               = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss28.source_files           = 'include/**/*.h'
                ss28.preserve_paths         = 'libs/**/*.a'                                                
                ss28.libraries              = 'vn_core_static', 'vn_face_static', 'vn_kits_static', 'vn_cnn_static', 'vn_resources_static'
                ss28.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_face_static.a', 'libs/libvn_kits_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_resources_static.a'
        end
 
        s.subspec 'venus-new-gesture' do |ss29|
                ss29.source_files                = 'include/**/*.h'
                ss29.preserve_paths       = 'libs/**/*.framework'
                ss29.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_kits.framework','libs/vn_cnn.framework','libs/vn_seg.framework','libs/vn_sbseg.framework','libs/vn_gesture.framework','libs/vn_bodylandmark.framework','libs/vn_face.framework','libs/vn_sr.framework','libs/vn_resources.framework','libs/vn_hairseg.framework','libs/vn_headseg.framework','libs/vn_skyseg.framework','libs/vn_clothesseg.framework','libs/vn_new_gesture.framework'
                ss29.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

        s.subspec 'venus-new-gesture2' do |ss30|
                ss30.source_files                = 'include/**/*.h'
                ss30.preserve_paths       = 'libs/**/*.framework'
                ss30.ios.vendored_frameworks = 'libs/vn_core.framework','libs/vn_kits.framework','libs/vn_cnn.framework','libs/vn_seg.framework','libs/vn_sbseg.framework','libs/vn_gesture.framework','libs/vn_bodylandmark.framework','libs/vn_face.framework','libs/vn_sr.framework','libs/vn_resources.framework','libs/vn_hairseg.framework','libs/vn_headseg.framework','libs/vn_skyseg.framework','libs/vn_clothesseg.framework','libs/vn_new_gesture.framework'
                ss30.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/venus/libs', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        end

         s.subspec 'venus-new-gesture2-static' do |ss31|
                ss31.ios.resource_bundle = { "vn_resources" => "libs/vn_resources.framework/default.metallib" }
                ss31.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss31.source_files         = 'include/**/*.h'
                ss31.preserve_paths       = 'libs/**/*.a'                                                
                ss31.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_kits_static', 'vn_resources_static', 'vn_gesture_static', 'vn_seg_static', 'vn_sbseg_static', 'vn_bodylandmark_static', 'vn_face_static', 'vn_asr_static', 'vn_hairseg_static', 'vn_new_gesture_static','libvn_headseg_static',
                ss31.ios.vendored_libraries = 'libs/libvn_core_static.a', 'libs/libvn_cnn_static.a', 'libs/libvn_kits_static.a', 'libs/libvn_asr_static.a', 'libs/libvn_seg_static.a', 'libs/libvn_sbseg_static.a', 'libs/libvn_bodylandmark_static.a', 'libs/libvn_face_static.a', 'libs/libvn_resources_static.a', 'libs/libvn_gesture_static.a', 'libs/libvn_new_gesture_static.a', 'libs/vn_hairseg_static.a','libs/vn_headseg_static'
        end 

        s.subspec 'venus-all-static2' do |ss32|
                ss32.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss32.source_files         = 'include/**/*.h'
                ss32.preserve_paths       = 'libs/**/*.a'                
                ss32.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_kits_static', 'vn_resources_static', 'vn_gesture_static', 'vn_seg_static', 'vn_sbseg_static', 'vn_bodylandmark_static', 'vn_face_static', 'vn_asr_static', 'vn_hairseg_static','vn_skyseg_static','vn_clothesseg_static','vn_new_gesture_static'
                ss32.vendored_frameworks     = 'Accelerate.framework/Accelerate.tbd'
                ss32.ios.vendored_libraries = 'libs/*.a','c++'                
        end

        s.subspec 'venus-all-static3' do |ss33|
                ss33.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss33.source_files         = 'include/**/*.h'
                ss33.preserve_paths       = 'libs/**/*.a'                
                ss33.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_kits_static', 'vn_resources_static', 'vn_gesture_static', 'vn_seg_static', 'vn_sbseg_static', 'vn_bodylandmark_static', 'vn_face_static', 'vn_asr_static', 'vn_hairseg_static','vn_skyseg_static','vn_clothesseg_static','vn_new_gesture_static','venus_static'
                ss33.vendored_frameworks     = 'Accelerate.framework/Accelerate.tbd'
                ss33.ios.vendored_libraries = 'libs/*.a','c++'                
        end

        s.subspec 'venus-all-yy' do |ss34|
                ss34.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/venus/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/venus/libs" }
                ss34.source_files         = 'include/**/*.h'
                ss34.preserve_paths       = 'libs/**/*.a'                
                ss34.libraries            = 'vn_core_static', 'vn_cnn_static', 'vn_kits_static', 'vn_resources_static', 'vn_bodylandmark_static', 'vn_face_static','vn_new_gesture_static'
                ss34.vendored_frameworks     = 'Accelerate.framework/Accelerate.tbd'
                ss34.ios.vendored_libraries = 'libs/*.a','c++'                
        end
        
end