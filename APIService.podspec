Pod::Spec.new do |s|
  s.name = 'APIService'
  s.version = '1.0.5'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://github.com/binaryloader/Synstagram-APIService'
  s.authors = { 'binaryloader' => '152517454+binaryloader@users.noreply.github.com' }
  s.summary = 'APIService for synstagram'
  s.swift_version = '5.0'

  s.ios.deployment_target = '11.0'

  s.source = { :git => 'https://github.com/binaryloader/Synstagram-APIService.git', :tag => s.version }

  s.dependency 'BinaryloaderExtensions', '1.0.2'

  s.default_subspec = :none

  s.subspec 'Auth' do |ss|
    ss.source_files = 'APIService/Module/Auth/Source/*.swift'
    ss.dependency 'BinaryloaderNetwork', '1.0.4'
  end
end