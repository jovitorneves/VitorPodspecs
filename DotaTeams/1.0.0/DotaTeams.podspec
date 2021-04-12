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
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vitor Neves' => 'j.victtor.neves@hotmail.com' }
  s.source           = { :git => 'https://github.com/VitorNevess/DotaTeams.git', :tag => s.version.to_s }

  s.platform = { :ios => '10.0' }
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  
  s.vendored_frameworks = 'DotaTeams.framework'
  s.pod_target_xcconfig = { 'ENABLED_BITCODE' => 'NO', 'SWIFT_VERSION' => '5.0' }
  
  s.default_subspec = 'Release'
  
  s.subspec 'Release' do |release|
      release.vendored_frameworks = 'DotaTeams.framework'
  end

  s.source_files = 'DotaTeams/Classes/**/*.{swift,h,m}'
  s.resources = 'DotaTeams/Assets/**/*',
                'DotaTeams/Classes/**/*.{xib,json,png,strings}'
                
  s.subspec 'Debug' do |debug|
      debug.source_files = 'DotaTeams/Classes/**/*.{swift,h,m}'
      debug.resources = 'DotaTeams/Assets/**/*',
                        'DotaTeams/Classes/**/*.{xib,json,tff,png,strings,xcassets,storyboard}'
                        
      s.subspec 'Tests' do |test_spec|
          test_spec.source_files = 'DotaTeams/Tests/**/*.swift'
          test_spec.resources = 'DotaTeams/Tests/**/*.{xib,json,tff,png,strings,xcassets,storyboard}'
      end
  end
  
#   s.resource_bundles = {
#     'DotaTeams' => ['DotaTeams/Assets/*.png']
#   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire'
end
