#
# Be sure to run `pod lib lint DotaTeams.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DotaTeams'
  s.version          = '1.0.0'
  s.summary          = 'A short description of DotaTeams.'
  s.description      = 'Times do Dota'
  s.homepage         = 'https://github.com/VitorNevess/DotaTeams'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vitor Neves' => 'j.victtor.neves@hotmail.com' }
  s.source           = { :git => 'https://github.com/VitorNevess/DotaTeams.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'DotaTeams/Classes/**/*'
  
   s.resource_bundles = {
     'DotaTeams' => ['DotaTeams/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
