Pod::Spec.new do |s|
        s.name                  = "orangefilter"
        s.version               = "3.5.4"
        s.summary               = "A iOS perbuilt lib for orangefilter."
        s.license               = {:type => 'BSD-licensed'}
        s.homepage              = "http://www.sunsetlakesoftware.com"
        s.author                = { "Cheng Yu" => "chengyu@yy.com", "Wan ZhiWen" => "wanzhiwen@yy.com", "Ning HuaLong" => "ninghualong@yy.com" }

        s.source                = {:http =>"http://cirepo.bs2dl.yy.com/sdks/ios/orangefilter/3.5.4/orangefilter.zip"}
        
        s.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilter/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
        s.frameworks            = 'CoreMedia','CoreVideo','OpenGLES','QuartzCore','AVFoundation','UIKit','Foundation','CoreGraphics','CoreImage','GLKit'
        
        s.default_subspec = 'orangefilter-all'

        s.subspec 'orangefilter-core' do |ss|
                ss.source_files		= 'include/**/*.h'
                ss.preserve_paths       = 'libs/**/*.framework'
                ss.ios.vendored_frameworks = 'libs/zlib.framework', 'libs/libpng.framework', 'libs/opencv.framework', 'libs/of_effect.framework', 'libs/of_pose.framework'
        end

        s.subspec 'orangefilter-beauty_only' do |ss|
                ss.source_files		= 'include/**/*.h'
                ss.preserve_paths       = 'libs/**/*.framework'
                ss.ios.vendored_frameworks = 'libs/zlib.framework', 'libs/libpng.framework', 'libs/of_effect.framework'
	end

        s.subspec 'orangefilter-all' do |ss|
                ss.source_files		= 'include/**/*.h'
                ss.preserve_paths       = 'libs/**/*.framework'
                ss.ios.vendored_frameworks = 'libs/*.framework'
	end
end
