Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "SLF4Swift"
  s.version      = "0.9.0"
  s.summary      = "Simple Log Facade for Swift"
  s.description  = <<-DESC
                   Simple Log Facade for Swift serves as a simple facade
                   for logging frameworks allowing the end user to plug in the desired
                   logging framework at deployment time
                   DESC
  s.homepage     = "https://github.com/phimage/SLF4Swift"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT (example)"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "phimage" => "eric.marchand.n7@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/phimage/SLF4Swift.git" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.default_subspec = 'Core'

  s.subspec "Core" do  |sp|
    sp.source_files = "SLF4Swift/*.swift"
  end

  s.subspec "CocoaLumberJack" do  |sp|
    sp.source_files = ['SLF4Swift/Bridge/CocoaLumberJack.swift']
    sp.dependency 'SLF4Swift/Core'
  end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.resource  = "logo-128x128.png"

end