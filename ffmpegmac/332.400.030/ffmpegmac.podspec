Pod::Spec.new do |s|

	s.name         = "ffmpegmac"
	s.version      = "332.400.030"
	s.summary      = "A macosx perbuilt lib for ffmpeg."
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://www.ffmpeg.org/"

	s.author       = { "Liu Qing" => "liuqing@yy.com", "Zhang JunHai1" => "zhangjunhai1@yy.com",  "Dang ZhengJun" => "dangzhengjun@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/ffmpegmac/332.400.030/ffmpeg.zip"}

	s.default_subspec = 'ffmpegmac_static'

	s.subspec 'ffmpegmac_static' do |ss|
 		ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/ffmpeg/libs" }
		ss.source_files		= 'include/**/*.h','include/*.h'
		ss.public_header_files = 'include/libyympeg_x264_version.h'
		ss.header_mappings_dir = 'include'
		ss.vendored_libraries = 'libs/**/*.a'
		ss.libraries = 'x264', 'yympeg'
	end
end
