use_frameworks!

def standard_pods
  pod "TransitionHandler", :git => 'https://github.com/Incetro/transition-handler'
end


target 'VIPER IOS' do
  use_frameworks!
  platform :ios, "12.0"
  standard_pods
end

target "VIPER IOS-Tests" do
  platform :ios, "12.0"
  standard_pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            # This works around a unit test issue introduced in Xcode 10.
            # We only apply it to the Debug configuration to avoid bloating the app size
            if config.name == "Debug" && defined?(target.product_type) && target.product_type == "com.apple.product-type.framework"
                config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = "YES"
            end
        end
    end
  installer.pods_project.build_configurations.each do |config|
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
  end
end 