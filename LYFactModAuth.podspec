#
# Be sure to run `pod lib lint LYFactModAuth.podspec' to ensure this.
# Created by Luo Yu(indie.luo@gmail.com),
# Tuesday, December 14, 2021
#

Pod::Spec.new do |s|
  s.name             = 'LYFactModAuth'
  s.version          = '0.1.1'
  s.summary          = 'LYFactModAuth.'

  s.description      = <<-DESC
User-auth Module.
                       DESC

  s.homepage         = 'https://github.com/Luo Yu/LYFactModAuth'
	
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Luo Yu' => 'indie.luo@gmail.com' }
  s.source           = { :git => 'https://github.com/blodely/LYFactModAuth.git', :tag => s.version.to_s }
  s.social_media_url = 'https://weibo.com/blodely'

  s.ios.deployment_target = '12.0'

  s.source_files = 'LYFactModAuth/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LYFactModAuth' => ['LYFactModAuth/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
	
	s.frameworks = 'UIKit'
	
	s.dependency 'LYCategory', '~> 1.14'
	s.dependency 'LYFactAppCommon', '~> 1.12.0'
	
end
