#
# Be sure to run `pod lib lint zhbKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'zhbKit'
  s.version          = '0.1.1'
  s.summary          = 'A short description of zhbKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zcc1994w/zhbKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zcc1994w' => 'cdzhb1994@163.com' }
  s.source           = { :git => 'https://github.com/zcc1994w/zhbKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'zhbKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'zhbKit' => ['zhbKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 3.2.0'
  # s.dependency 'ReactiveCocoa', :git => 'https://github.com/zhao0/ReactiveCocoa.git', :tag => '2.5.2'
  # s.dependency 'MBProgressHUD', '~> 1.1.0'
  # s.dependency 'Masonry', '~> 1.1.0'
  # s.dependency 'MJExtension', '~> 3.0.13'
  # s.dependency 'MJRefresh', '~> 3.1.15.3'
end
