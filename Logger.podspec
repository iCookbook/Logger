Pod::Spec.new do |s|
  s.name             = 'Logger'
  s.version          = '1.1.0'
  s.summary          = 'Custom logger of the project'
  s.homepage         = 'https://github.com/htmlprogrammist/Logger'
  s.author           = { 'htmlprogrammist' => '60363270+htmlprogrammist@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/iCookbook/Logger.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.source_files = 'Logger/Sources/**/*.{swift}'
  
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Logger/Tests/**/*.{swift}'
  end
end
