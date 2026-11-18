class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.11.0/rex-dash-v1.11.0-darwin-arm64.tar.gz"
      sha256 "45c6ad984ae56f5877821ce03c3fa6adb5b5727b4d369db8761b4ef467d9a1a1"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.11.0/rex-dash-v1.11.0-darwin-x64.tar.gz"
      sha256 "2ba16cf0ce56e55f323f2cd0a8c094b615c8caff0af890b2f8f2780fd6a98b64"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.11.0/rex-dash-v1.11.0-linux-arm64.tar.gz"
      sha256 "f4c7756239da65016a5e6d3826543969dc3a0828337350b307315dbb2a3443b8"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.11.0/rex-dash-v1.11.0-linux-x64.tar.gz"
      sha256 "8ff6b9404b52508834ac90d1df9a21b587fb1341e61e2d4425281e81fa5d23b3"
    end
  end

  depends_on "gh"

  def install
    bin.install "rex-dash"
    pkgshare.install "LICENSE", "NODE-LICENSE"
  end

  test do
    assert_equal "ok", shell_output("#{bin}/rex-dash --test").strip
  end
end
