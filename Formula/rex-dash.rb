class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.14.0/rex-dash-v1.14.0-darwin-arm64.tar.gz"
      sha256 "0379ae69943fdf3e300f8c5cc29f97142b0fab90778d95503eb05302eb4eb1f8"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.14.0/rex-dash-v1.14.0-darwin-x64.tar.gz"
      sha256 "490a703336d6d4e331c1a0b6b074c95504d9ab013d7904db060994d202b033d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.14.0/rex-dash-v1.14.0-linux-arm64.tar.gz"
      sha256 "741c109a0ce9b2471be38eb5c235c36142859bed5cb41e1654c27cfc708565f5"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.14.0/rex-dash-v1.14.0-linux-x64.tar.gz"
      sha256 "e25b7400a0f0ff2cf66b50e83c1bb9dcf1a03fe67fa5cf5c1537fca74c113bce"
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
