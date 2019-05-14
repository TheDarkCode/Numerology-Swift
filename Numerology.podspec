Pod::Spec.new do |spec|

  spec.name         = "Numerology"
  spec.version      = "0.1"
  spec.summary      = "Date numerology utilities written in Swift. "

  spec.description  = <<-DESC
Library to calculate date numerology values for any date.
                   DESC

  spec.homepage     = "https://github.com/TheDarkCode/Numerology-Swift"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Mark Hamilton" => "mark@dryverless.com" }

  spec.ios.deployment_target  = '9.0'
  spec.osx.deployment_target  = '10.10'
  spec.swift_version = '4.0'

  spec.source       = { :git => "https://github.com/TheDarkCode/Numerology-Swift.git", :tag => "#{spec.version}" }
  spec.source_files  = "Numerology/**/*.{h,m,swift}"

end
