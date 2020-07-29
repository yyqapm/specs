Pod::Spec.new do |s|
        s.name                  = "orangefilterpub"
        s.version               = "1.4.1"
        s.summary               = "A iOS perbuilt lib for orangefilter publish."
        s.license               = {:type => 'BSD-licensed'}
        s.homepage              = "http://www.sunsetlakesoftware.com"
        s.author                = { "Cheng Yu" => "chengyu@yy.com", "Wan ZhiWen" => "wanzhiwen@yy.com", "Ning HuaLong" => "ninghualong@yy.com" }

        s.source                = {:http =>"https://cirepo.bs2dl.yy.com/sdks/ios/orangefilterpub/1.4.1/orangefilterpub.zip"}
        
        s.frameworks            = 'OpenGLES','UIKit','CoreGraphics','CoreText'
        
        s.default_subspec = 'orangefilterpub-all'

        s.subspec 'orangefilterpub-all' do |sda|
                sda.xcconfig             = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/orangefilterpub/include','LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
                sda.source_files		= 'include/**/*.h'
                sda.preserve_paths       = 'libs/**/*.framework'
                sda.ios.vendored_frameworks = 'libs/*.framework'
        end
        
end
