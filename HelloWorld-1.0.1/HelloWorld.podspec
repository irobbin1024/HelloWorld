Pod::Spec.new do |s|
  s.name = "HelloWorld"
  s.version = "1.0.1"
  s.summary = "XiaoYing - HelloWorld"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"irobbin1024"=>"longbin.lai@quvideo.com"}
  s.homepage = "http://gitlab.quvideo.com/CI-iOS/HelloWorld"
  s.source = libraries

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/HelloWorld.framework'
end
