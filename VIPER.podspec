Pod::Spec.new do |spec|

  spec.name                  = 'VIPER'
  spec.module_name           = 'VIPER'
  spec.version               = '1.1.1'
  spec.license               = 'MIT'
  spec.authors               = { 'incetro' => 'incetro@ya.ru' }
  spec.homepage              = "https://github.com/Incetro/VIPER.git"
  spec.summary               = 'VIPER architecture helpers'
  spec.platform              = :ios, "12.0"
  spec.ios.deployment_target = "12.0"
  spec.swift_version         = '5.3'
  spec.source                = { git: "https://github.com/Incetro/VIPER.git", tag: "#{spec.version}" }
  spec.source_files          = "Sources/VIPER/**/*.{h,m,swift}"

  spec.dependency "TransitionHandler"
end