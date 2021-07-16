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

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
XiaoYing pod  - HelloWorld
                       DESC
  s.homepage         = 'http://gitlab.quvideo.com/CI-iOS/HelloWorld'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'irobbin1024' => 'longbin.lai@quvideo.com' }
  s.source           = { :git => 'git@gitlab.quvideo.com:CI-iOS/HelloWorld.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '9.0'

  s.prefix_header_contents = "#if __has_include(<XYLocalizationManager/XYLocalizedStringMgr.h>) \n#import <XYLocalizationManager/XYLocalizedStringMgr.h> \n#else \n#import \"XYLocalizedStringMgr.h\" \n#endif"
  s.resource_bundles = {
    'HelloWorld' => ['HelloWorld/Assets/*.xcassets', 'HelloWorld/Assets/**/*.*']
  }
  s.source_files = "#{s.name}/Classes/**/*"
  s.dependency 'XYToolKit'
  s.dependency 'XYCategory'
  s.dependency 'XYLocalizationManager'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
