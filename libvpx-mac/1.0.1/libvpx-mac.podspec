Pod::Spec.new do |spec|
    spec.name         = 'libvpx-mac'
    spec.version      = '1.0.1'
	spec.summary      = "libvpx-mac  decoder"
    spec.homepage     = 'https://git.yy.com/midwares/yyvideosdk/libvpx'
    spec.authors      = { 'xuliang3' => 'xuliang3@yy.com' }
	spec.source          = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/libvpx-mac/1.0.1/libvpx.zip"}
	spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/libvpx-mac/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/libvpx-mac/libs" }

	spec.source_files		= 'include/**/*.h'
	spec.header_mappings_dir = 'include'
	spec.vendored_library = 'libs/libvpx.a'
	spec.library = 'vpx'
end
