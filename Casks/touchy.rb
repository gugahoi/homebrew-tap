cask "touchy" do
  version "1.1.0"
  sha256 "c3cc2b91b648179bf33596d686be178d25810d1a7a0df0e9a548a6f0a6755311"

  url "https://github.com/gugahoi/touchy/releases/download/v#{version}/Touchy-v1.1.0-macOS.zip"
  name "Touchy"
  desc "Native macOS menu-bar app for remapping multitouch gestures"
  homepage "https://github.com/gugahoi/touchy"

  app "Touchy.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Touchy.app"], must_succeed: false
  end
end
