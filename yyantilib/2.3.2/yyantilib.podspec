Pod::Spec.new do |s|
	s.name         = "yyantilib"
	s.version      = "2.3.2"
	s.summary      = "anti plugs."
	s.license      = {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.homepage     = "http://sunclouds.com"
	s.author       = { "zhaoding" => "zhaoding@yy.com" }
	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyantilib/2.3.2/yyantilib.zip"}
	
	s.default_subspec = 'yyantilib'
	s.subspec 'yyantilibgnu' do |ss|
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyantilib/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yyantilib/libs" }
	    ss.source_files = 'include/**/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libyyantilib_gnu.a'
        ss.frameworks = 'CoreTelephony', 'DeviceCheck', 'CoreMotion'
	    ss.libraries = 'resolv', 'yyantilib_gnu'
    end

    s.subspec 'yyantilibstd' do |sx|
	    sx.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyantilib/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yyantilib/libs" }
	    sx.source_files = 'include/**/*.h'
	    sx.header_mappings_dir = 'include'
	    sx.vendored_library = 'libs/libyyantilib_std.a'
	    sx.frameworks = 'CoreTelephony', 'DeviceCheck', 'CoreMotion'
        sx.libraries = 'resolv', 'yyantilib_std'
    end
    
    s.subspec 'yyantilib' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyantilib/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.source_files = 'include/**/*.h'
	    sy.header_mappings_dir = 'include'
    	sy.preserve_paths = 'libs/**/*.framework'
    	sy.ios.vendored_frameworks = 'libs/*.framework'
    end
end
