Pod::Spec.new do |s|
        s.name                  = "orangefilter"
        s.version               = "4.1.0-dev"
        s.summary               = "A iOS perbuilt lib for orangefilter."
        s.license               = {:type => 'BSD-licensed'}
        s.homepage              = "http://www.sunsetlakesoftware.com"
        s.author                = { "Cheng Yu" => "chengyu@yy.com", "Wan ZhiWen" => "wanzhiwen@yy.com", "Ning HuaLong" => "ninghualong@yy.com" }

        s.source                = {:http =>"http://repo.yypm.com/dwbuild/mobile/ios/orangefilter/orangefilter_4.1_feature/20190322-1372-r2401726/orangefilter.zip"}
        
        s.frameworks            = 'CoreMedia','CoreVideo','OpenGLES','QuartzCore','AVFoundation','UIKit','Foundation','CoreGraphics','CoreImage','GLKit'
        
        s.default_subspec = 'orangefilter-all'

        s.subspec 'orangefilter-core' do |sdc|
                sdc.xcconfig             = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
                sdc.source_files		= 'include/**/*.h'
                sdc.preserve_paths       = 'libs/**/*.framework'
                sdc.ios.vendored_frameworks = 'libs/zlib.framework', 'libs/libpng.framework', 'libs/opencv.framework', 'libs/of_effect.framework', 'libs/of_pose.framework', 'libs/of_core.framework'
        end

        s.subspec 'orangefilter-all_no_ar' do |sdan|
                sdan.xcconfig             = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
                sdan.source_files		= 'include/**/*.h'
                sdan.preserve_paths       = 'libs/**/*.framework'
                sdan.ios.vendored_frameworks = 'libs/zlib.framework', 'libs/libpng.framework', 'libs/opencv.framework', 'libs/of_effect.framework', 'libs/of_pose.framework', 'libs/of_core.framework', 'libs/facedancegame.framework', 'libs/ardancegame.framework', 'libs/of_avatar.framework'
        end

        s.subspec 'orangefilter-all' do |sda|
                sda.xcconfig             = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
                sda.source_files		= 'include/**/*.h'
                sda.preserve_paths       = 'libs/**/*.framework'
                sda.ios.vendored_frameworks = 'libs/*.framework'
        end
        
        s.subspec 'orangefilter_static-core' do |ssc|
                ssc.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter/libs" }
                ssc.source_files     = 'include/**/*.h'
                ssc.preserve_paths       = 'libs/**/*.a'
                ssc.libraries = 'of_core_static', 'png_static', 'zlib_static', 'opencv_static', 'of_effect_static', 'of_pose_static', 'bullet', 'lua','vpx', 'freetype'
                ssc.ios.vendored_libraries = 'libs/libof_core_static.a', 'libs/libpng_static.a', 'libs/libzlib_static.a', 'libs/libopencv_static.a', 'libs/libof_effect_static.a', 'libs/libof_pose_static.a', 'libs/libbullet.a', 'libs/liblua.a', 'libs/libvpx.a', 'libs/libfreetype.a'
        end
        
        s.subspec 'orangefilter_static-all_no_ar' do |ssan|
                ssan.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter/libs" }
                ssan.source_files     = 'include/**/*.h'
                ssan.preserve_paths       = 'libs/**/*.a'
                ssan.libraries = 'of_core_static', 'png_static', 'zlib_static', 'opencv_static', 'of_effect_static', 'of_pose_static', 'bullet', 'lua', 'vpx', 'freetype', 'facedancegame_static', 'ardancegame_static', 'of_avatar_static'
                ssan.ios.vendored_libraries = 'libs/libof_core_static.a', 'libs/libpng_static.a', 'libs/libzlib_static.a', 'libs/libopencv_static.a', 'libs/libof_effect_static.a', 'libs/libof_pose_static.a', 'libs/libbullet.a', 'libs/liblua.a', 'libs/libvpx.a', 'libs/libfacedancegame_static.a', 'libs/libardancegame_static.a', 'libs/libfreetype.a', 'libs/libof_avatar_static.a'
        end
        
        s.subspec 'orangefilter_static-all_no_ar_no_webp' do |ssnanw|
                ssnanw.dependency  'Webp-YY'
                ssnanw.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter/libs" }
                ssnanw.source_files     = 'include/**/*.h'
                ssnanw.preserve_paths       = 'libs/**/*.a'
                ssnanw.libraries = 'of_core_static', 'png_static', 'zlib_static', 'opencv_static', 'of_effect_static', 'of_pose_static', 'bullet', 'lua', 'vpx', 'freetype', 'facedancegame_static', 'ardancegame_static'
                ssnanw.ios.vendored_libraries = 'libs/libof_core_static.a', 'libs/libpng_static.a', 'libs/libzlib_static.a', 'libs/libopencv_static.a', 'libs/libof_effect_static.a', 'libs/libof_pose_static.a', 'libs/libbullet.a', 'libs/liblua.a', 'libs/libvpx.a', 'libs/libfacedancegame_static.a', 'libs/libardancegame_static.a', 'libs/libfreetype.a'
        end

        s.subspec 'orangefilter_static-all' do |ssa|
                ssa.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/orangefilter/libs" }
                ssa.source_files         = 'include/**/*.h'
                ssa.preserve_paths       = 'libs/**/*.a'
                ssa.libraries = 'of_core_static', 'png_static', 'zlib_static', 'opencv_static', 'of_effect_static', 'of_pose_static', 'bullet', 'lua', 'vpx', 'webp', 'facedancegame_static', 'ardancegame_static', 'of_arcamera_static', 'freetype', 'of_avatar_static'
                ssa.ios.vendored_libraries = 'libs/*.a'
        end
end
