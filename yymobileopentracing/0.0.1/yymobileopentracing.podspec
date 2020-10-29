Pod::Spec.new do |s|
        s.name                  = "yymobileopentracing"
        s.version               = "0.0.1"
        s.summary               = "react dynamic lib"
        s.license               = {:type => 'MIT-licensed'}
        s.homepage              = 'http://sunclouds.com'
        s.author                = { "chenzhiying" => "chenzhiying@yy.com" }
        s.source                = {:http =>"https://cirepo.bs2dl.yy.com/sdks/ios/yymobileopentracing/0.0.1/yymobileopentracing.zip"}
        
        s.default_subspec = 'dynamic'

        s.subspec 'dynamic' do |ss|
          ss.platform = :ios, '8.0'
          ss.ios.deployment_target = '8.0'
          ss.header_mappings_dir = 'libs/YYOT.framework/Headers'
          ss.preserve_paths = 'libs/YYOT.framework'
          ss.ios.vendored_frameworks = 'libs/YYOT.framework'
          ss.frameworks = 'UIKit'
          ss.dependency  'hdstatsdk/HiidoSDKDynamic'
          ss.xcconfig = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/Frameworks'}
        end

        s.subspec 'static' do |ss|
          ss.platform = :ios, '8.0'
          ss.ios.deployment_target = '8.0'
          ss.header_mappings_dir = 'libs/YYOTStatic.framework/Headers'
          ss.preserve_paths = 'libs/YYOTStatic.framework'
          ss.ios.vendored_frameworks = 'libs/YYOTStatic.framework'
          ss.frameworks = 'UIKit'
          ss.dependency  'hdstatsdk'
          ss.xcconfig = {'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yymobileopentracing/libs"}
        end

        s.dependency 'opentracing','~>0.4.0'
end