Pod::Spec.new do |s|

	s.name         = "libyuv"
	s.version      = "1.0.5"
	s.summary      = "Open libyuv library for yysdk."
	s.homepage     = "http://libyuv.googlecode.com/svn/trunk/"
	s.license      = {:type => 'BSD'}
	s.author       = { "Zhangjunhai1" => "zhangjunhai1@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/libyuv/1.0.5/libyuv.zip"}

	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/libyuv/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/libyuv/libs" }

	s.source_files		= 'include/**/*.h','include/*.h'
	s.header_mappings_dir = 'include'
	s.vendored_library = 'libs/libyuv.a'
	s.library = 'yuv'
    s.default_subspec = 'libyuv-common'

    s.subspec 'libyuv-common' do |sc|
                sc.source_files        = 'include/libyuv/*.h'
                sc.public_header_files = 'include/*.h'
                sc.header_mappings_dir = 'include'
                sc.vendored_libraries = 'libs/libyuv.a'
                sc.libraries = 'yuv'
    end

    s.subspec 'libyuv-bd' do |sbd|
            sbd.source_files        = 'include/libyuv_disable_bitcode/include/libyuv/*.h'
            sbd.public_header_files = 'include/libyuv_disable_bitcode/include/*.h'
            sbd.header_mappings_dir = 'include'
            sbd.vendored_libraries = 'libs/libyuv_neon.a','libs/libyuv_internal.a'
            sbd.libraries = 'yuv_neon','yuv_internal'
    end
end
