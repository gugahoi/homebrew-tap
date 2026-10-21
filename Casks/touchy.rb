cask "touchy" do
  version "1.2.1"
  sha256 "41b8670d4d6022fde55bf149539e0b7694460d116f159e0920c919c58c0c01fd"

  url "https://github.com/gugahoi/touchy/releases/download/v#{version}/Touchy-v1.2.1-macOS.zip"
  name "Touchy"
  desc "Menu-bar app for remapping multitouch gestures"
  homepage "https://github.com/gugahoi/touchy"

  depends_on :macos

  app "Touchy.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Touchy.app"], must_succeed: false
  end
end
