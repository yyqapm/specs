Pod::Spec.new do |s|

	s.name         = "ffmpeg"
	s.version      = "1.0.6"
	s.summary      = "A iOS perbuilt lib for ffmpeg."
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://www.ffmpeg.org/"

	s.author       = { "Liu Qing" => "liuqing@yy.com", "Zhang JunHai1" => "zhangjunhai1@yy.com",  "Dang ZhengJun" => "dangzhengjun@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/ffmpeg/1.0.6/ffmpeg.zip"}

	s.default_subspec = 'ffmpeg-0.8.7'

	s.subspec 'ffmpeg-0.8.7' do |ss|
 		ss.source_files = 'include/**/*.h'
    		ss.preserve_paths = 'libs/**/*.a'
	  	ss.libraries = 'x264', 'avcodec',  'avformat', 'avutil', 'swscale'
	end

	s.subspec 'ffmpeg-ac' do |ss|
		ss.source_files		= 'include/**/*.h'
		ss.public_header_files = 'include/**/*.h'
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.a'
		ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
	end
	s.subspec 'ffmpeg-271-ios' do |ss|
		ss.source_files		= 'include/**/*.h','include/*.h'
		ss.public_header_files = 'include/libyympeg_x264_version.h'
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.a'
		ss.libraries = 'x264', 'yympeg'
	end
	s.subspec 'ffmpeg-271-x264optim' do |ss|
		ss.source_files		= 'include/**/*.h','include/*.h'
		ss.public_header_files = 'include/libyympeg_x264_version.h'
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.a'
		ss.libraries = 'x264', 'yympeg'
	end
	s.subspec 'ffmpeg-332-ios' do |ss|
        ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/ffmpeg/libs" }
		ss.source_files		= 'include/**/*.h','include/*.h'
		ss.public_header_files = 'include/libyympeg_x264_version.h'
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/libx264.a','libs/**/libyympeg.a'
		ss.libraries = 'x264', 'yympeg'
	end
    s.subspec 'ffmpeg-small-ios' do |sl|
        sl.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/ffmpeg/libs" }
        sl.source_files        = 'include/**/*.h','include/*.h'
        sl.public_header_files = 'include/libyympeg_x264_version.h'
        sl.header_mappings_dir = 'include'
        sl.vendored_libraries = 'libs/**/libx264.a','libs/**/libsmallyympeg.a'
        sl.libraries = 'x264', 'smallyympeg'
    end
	s.subspec 'ffmpeg-332-ios-dylib' do |ss|
		ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LD_RUNPATH_SEARCH_PATHS' => "@loader_path/Frameworks" }
		ss.source_files		= 'include/**/*.h','include/*.h'
		ss.public_header_files = 'include/libyympeg_x264_version.h'
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.dylib'
		ss.libraries = 'ffmpeg-neon'
	end
end
