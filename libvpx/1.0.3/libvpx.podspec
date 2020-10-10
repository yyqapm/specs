Pod::Spec.new do |spec|
    spec.name         = 'libvpx'
    spec.version      = '1.0.3'
	spec.summary      = "libvpx  decoder"
    spec.homepage     = 'https://git.yy.com/midwares/yyvideosdk/libvpx'
    spec.authors      = { 'wangyingqi' => 'wangyingqi@yy.com' }
	spec.source          = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/libvpx/1.0.3/libvpx.zip"}
	spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/libvpx/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/libvpx/libs" }

	spec.source_files		= 'include/**/*.h'
	spec.header_mappings_dir = 'include'
	spec.vendored_library = 'libs/libvpx.a'
	spec.library = 'vpx'
end
