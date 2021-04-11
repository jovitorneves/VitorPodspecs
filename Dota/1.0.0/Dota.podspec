Pod::Spec.new do |s|
  s.name             = 'Dota'
  s.version          = '1.0.0'
  s.summary          = 'A short description of Dota.'
  s.description      = 'Projeto contendo dados do Dota.'
  s.homepage         = 'https://github.com/VitorNevess/Dota'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vitor Neves' => 'j.victtor.neves@hotmail.com' }
  s.source           = { :git => 'https://github.com/VitorNevess/Dota.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '10.0'

  s.source_files = 'Dota/Classes/**/*'
  
   s.resource_bundles = {
     'Dota' => ['Dota/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'Alamofire'
   s.dependency 'Cartography'
   s.dependency 'DotaTeams'
   
end
