deployment_target = '13.0'

platform :ios, deployment_target

target 'SwiftUI Base Components' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SwiftUI-Base-Components
  pod 'SwiftLint'
  pod 'Swinject'
  pod 'Kingfisher'
  pod 'CollectionViewSlantedLayout', '~> 3.1'
  pod 'DLProgressHUD', '~> 1.0'


  post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = deployment_target
      end
    end
  end
end