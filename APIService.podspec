Pod::Spec.new do |s|
  s.name = 'APIService'
  s.version = '1.0.8'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://github.com/binaryloader/synstagram-module-apiservice'
  s.authors = { 'binaryloader' => '152517454+binaryloader@users.noreply.github.com' }
  s.summary = 'APIService for synstagram'
  s.swift_version = '5.6'

  s.ios.deployment_target = '13.0'

  s.source = { :git => 'https://github.com/binaryloader/synstagram-module-apiservice.git', :tag => s.version }

  s.dependency 'BinaryLoaderExtensions', '1.0.3'

  s.default_subspec = :none

  s.subspec 'Auth' do |ss|
    ss.source_files = 'APIService/Module/Auth/Source/*.swift'
    ss.dependency 'BinaryLoaderNetwork', '1.0.5'
  end
end
