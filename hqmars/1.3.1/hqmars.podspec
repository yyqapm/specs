Pod::Spec.new do |s|
	s.name 			= 'hqmars'
	s.version 		= '1.3.1'
	s.summary 		= 'tencent mars framework'
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
	s.homepage 		= 'http://www.joyyinc.com'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2017 YY Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => 'http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqmars/1.3.1/hqmars.zip'}
    s.ios.vendored_frameworks = 'libs/mars.framework'

    s.ios.libraries = 'resolv.9', 'z', 'c++'
    s.ios.frameworks = 'SystemConfiguration', 'Foundation', 'UIKit', 'CoreTelephony'

	s.ios.deployment_target	= '8.0'

	s.requires_arc	= true
	s.ios.xcconfig   = {
        'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/hqmars/libs'
	}
end
