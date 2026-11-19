class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.13.0/rex-dash-v1.13.0-darwin-arm64.tar.gz"
      sha256 "d652d0834ad2e73268b668467b6c516b261090c5cd32996b2bd566c0e84ced5f"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.13.0/rex-dash-v1.13.0-darwin-x64.tar.gz"
      sha256 "ff967ab599eaeddaa0feffdbfce6a7c21fd58110d21746fd43ae3270af080b60"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.13.0/rex-dash-v1.13.0-linux-arm64.tar.gz"
      sha256 "6f7def6ad9db55d0be2fa0bcd25078ff380d17b67a19cced0d4ffd6184601ba0"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.13.0/rex-dash-v1.13.0-linux-x64.tar.gz"
      sha256 "c62d030fe5305e622bce711e5546af885dff0abb1f270c2a01e8edcb48ebc8c0"
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
