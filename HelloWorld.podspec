#
# Be sure to run `pod lib lint HelloWorld.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  def self.smart_version
    tag = `git describe --abbrev=0 --tags 2>/dev/null`.strip
    if $?.success? then tag else "0.0.1" end
  end
  s.name             = 'HelloWorld'
  s.version          = smart_version
  s.summary          = 'XiaoYing - HelloWorld'
  s.homepage         = 'http://gitlab.quvideo.com/CI-iOS/HelloWorld'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'irobbin1024' => 'longbin.lai@quvideo.com' }
  s.source           = { :git => 'git@gitlab.quvideo.com:CI-iOS/HelloWorld.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.resource_bundles = {
    'HelloWorld' => ['HelloWorld/Assets/*.xcassets', 'HelloWorld/Assets/**/*.*']
  }
  s.source_files = "#{s.name}/Classes/**/*"
  s.dependency 'XYCategory'
end
