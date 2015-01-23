Pod::Spec.new do |s|
  s.name             = "JUMP"
  s.version          = "1.0.0"
  s.summary          = "a collection of classes in Objective-C to perform a series of tasks on iOS or Mac OS applications."
  s.homepage         = "http://seqoy.github.io/jump/Docs/JUMP/html/index.html"
  s.license          = 'Apache License'
  s.author           = { "Paulo Oliveira" => "paulo@seqoy.com" }
  s.source           = { :git => "https://github.com/grubster/JUMP.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = false

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'JUMP' => ['Pod/Assets/*.png']
  }
  
  s.subspec 'JUMPCore' do |jpc|
    jpc.source_files = 'Pod/Classes/JUMPCore/{Sources,Headers}/*.{h,m}'
    jpc.public_header_files = 'Pod/Classes/JUMPCore/Headers/*.h'
  end

  s.subspec 'JUMPLogger' do |jpl|
    jpl.source_files = 'Pod/Classes/JUMPLogger/{Sources,Headers}/*.{h,m}', 'Pod/Classes/JUMPLogger/Libraries/Log4CocoaTouch/{Sources,Headers}/*.h'
    jpl.public_header_files = 'Pod/Classes/JUMPLogger/Headers/*.h', 'Pod/Classes/JUMPLogger/Libraries/Log4CocoaTouch/Headers/*.h'
    jpl.preserve_paths        = 'Pod/Classes/JUMPLogger/libLog4CocoTouch.a'
    jpl.ios.vendored_library  = 'Pod/Classes/JUMPLogger/libLog4CocoTouch.a'
    jpl.libraries             = 'Log4CocoTouch' 
    jpl.dependency 'JUMP/JUMPCore'
    jpl.dependency 'NSLogger', '1.5'
  end

  s.subspec 'JUMPDatabase' do |jpd|
    jpd.source_files = 'Pod/Classes/JUMPDatabase/{Sources,Headers}/*.{h,m}', 'Pod/Classes/JUMPDatabase/Libraries/IAThreadSafeCoreData/{Sources,Headers}/*.{h,m}'
    jpd.public_header_files = 'Pod/Classes/JUMPDatabase/Headers/*.h', 'Pod/Classes/JUMPDatabase/Libraries/IAThreadSafeCoreData/Headers/*.h'
    jpd.dependency 'JUMP/JUMPCore'
    jpd.dependency 'JUMP/JUMPLogger'
  end

  s.subspec 'JUMPNetwork' do |jpn|
    jpn.source_files = 'Pod/Classes/JUMPNetwork/{Sources,Headers}/**/*.{h,m}'
    jpn.public_header_files = 'Pod/Classes/JUMPNetwork/Headers/*.h'
    jpn.dependency 'AFNetworking', '~> 2.0'
    jpn.dependency 'JUMP/JUMPLogger'
  end

  s.subspec 'JUMPData' do |jdt|
    jdt.source_files = 'Pod/Classes/JUMPData/{Sources,Headers}/*.{h,m}', 'Pod/Classes/JUMPData/Libs/SBJSON/{Source,Headers}/*.{h,m}', 'Pod/Classes/JUMPData/Libs/GoogleToolboxForMac/{Source,Headers}/*.{h,m}'
    jdt.public_header_files = 'Pod/Classes/JUMPData/Headers/*.h', 'Pod/Classes/JUMPData/Libs/SBJSON/Headers/*.h', 'Pod/Classes/JUMPData/Libs/GoogleToolboxForMac/Headers/*.h'
    jdt.dependency 'JUMP/JUMPNetwork'
    jdt.dependency 'JUMP/JUMPDatabase'
  end

  s.subspec 'JUMPUserInterface' do |jui|
    jui.source_files = 'Pod/Classes/JUMPUserInterface/{Sources,Headers}/*.{h,m}'
    jui.public_header_files = 'Pod/Classes/JUMPUserInterface/Headers/*.h'
  end
end
