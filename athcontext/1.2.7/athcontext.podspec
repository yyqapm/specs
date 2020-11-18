Pod::Spec.new do |s|
  s.name         = 'athcontext'
  s.version      = '1.2.7'
  s.summary      = 'athcontext'
    
  s.license      = { :type => 'BSD' }
  s.homepage     = 'https://git.yy.com/midwares/modular/athcontext-ios'
  s.authors      = { 'Li Hejun' => 'lihejun@yy.com' }
  s.summary      = 'iOS Modularization.'
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/athcontext/1.2.7/athcontext.zip" }
  
  s.platform     = :ios
    s.ios.deployment_target = '8.0'
    s.requires_arc = true
  
  s.default_subspec = 'static'
  
  s.subspec 'static' do |ss|

    ss.ios.vendored_frameworks = 'libs/ATHContext.framework'
    
    ss.xcconfig = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/athcontext/libs/ATHContext.framework/Headers'}
  end
  

  s.subspec 'dynamic' do |ss|
    ss.ios.vendored_frameworks = 'libs/ATHContextDynamic.framework'
    
    ss.xcconfig = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/athcontext/libs/ATHContextDynamic.framework/Headers', 
    'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
  end
end

  
