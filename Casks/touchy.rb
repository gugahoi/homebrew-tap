cask "touchy" do
  version "1.0.3"
  sha256 "c442471fd2827381388f399fa9f512501cbee949aee05e33b1c0f69bd0cbd521"

  url "https://github.com/gugahoi/touchy/releases/download/v#{version}/Touchy-v1.0.3-macOS.zip"
  name "Touchy"
  desc "Native macOS menu-bar app for remapping multitouch gestures"
  homepage "https://github.com/gugahoi/touchy"

  app "Touchy.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Touchy.app"] if OS.mac?
  end
end
