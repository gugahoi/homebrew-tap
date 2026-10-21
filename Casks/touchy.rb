cask "touchy" do
  version "1.2.0"
  sha256 "d025b14a23a5a61d1b5770de96bc5ba4e1ad07edcbac0684587c672b4d152165"

  url "https://github.com/gugahoi/touchy/releases/download/v#{version}/Touchy-v1.2.0-macOS.zip"
  name "Touchy"
  desc "Native macOS menu-bar app for remapping multitouch gestures"
  homepage "https://github.com/gugahoi/touchy"

  app "Touchy.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Touchy.app"], must_succeed: false
  end
end
