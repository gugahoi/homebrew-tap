cask "touchy" do
  version "1.0.2"
  sha256 "68525cce846cc046ce4a10d51ba3d224fc202eef17aa336b1a9bbccaea1c86c6"

  url "https://github.com/gugahoi/touchy/releases/download/v#{version}/Touchy-v1.0.2-macOS.zip"
  name "Touchy"
  desc "Native macOS menu-bar app for remapping multitouch gestures"
  homepage "https://github.com/gugahoi/touchy"

  app "Touchy.app"

  caveats <<~EOS
    Touchy is not notarized. If macOS blocks the app, remove the quarantine bit:
      xattr -dr com.apple.quarantine /Applications/Touchy.app
  EOS
end
