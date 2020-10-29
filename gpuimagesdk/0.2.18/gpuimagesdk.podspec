Pod::Spec.new do |s|
        s.name                  = "gpuimagesdk"
        s.version               = "0.2.18"
        s.summary               = "A iOS perbuilt lib for GPUImage."
        s.license               = {:type => 'BSD-licensed'}
        s.homepage              = "http://www.sunsetlakesoftware.com"
        s.author                = { "XuQing" => "xuqing@yy.com" }

        s.source                = {:http =>"https://cirepo.bs2dl.yy.com/sdks/ios/gpuimagesdk/0.2.18/gpuimagesdk.zip"}

        s.source_files          = 'include/**/*.h'
        s.preserve_paths        = 'libs/**/*.a'
        s.xcconfig              = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/gpuimagesdk/include','LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/gpuimagesdk/libs" }
        s.library               = 'GPUImage'
        s.frameworks            = 'CoreMedia','CoreVideo','OpenGLES','QuartzCore','AVFoundation','UIKit','Foundation'
end
