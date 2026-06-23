cask "touchy" do
  version "1.0.4"
  sha256 "d3972d651b905652d2bbec5e1a0747e0a6391aad1d28160b2d3cdf4aee68f00f"

  url "https://github.com/gugahoi/touchy/releases/download/v#{version}/Touchy-v1.0.4-macOS.zip"
  name "Touchy"
  desc "Native macOS menu-bar app for remapping multitouch gestures"
  homepage "https://github.com/gugahoi/touchy"

  app "Touchy.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Touchy.app"] if OS.mac?
  end
end
