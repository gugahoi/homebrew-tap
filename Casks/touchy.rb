cask "touchy" do
  version "1.0.5"
  sha256 "200845afce068d9e41e96ae64c4940d5fb4df7eaadeae7a482f1e7328d8f36f6"

  url "https://github.com/gugahoi/touchy/releases/download/v#{version}/Touchy-v1.0.5-macOS.zip"
  name "Touchy"
  desc "Native macOS menu-bar app for remapping multitouch gestures"
  homepage "https://github.com/gugahoi/touchy"

  app "Touchy.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Touchy.app"] if OS.mac?
  end
end
