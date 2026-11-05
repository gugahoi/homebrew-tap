class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.9.0/rex-dash-v1.9.0-darwin-arm64.tar.gz"
      sha256 "34aad5e8e75dd1d0536e0f4ba8b650417cef5595cff9cb6b400f6f444ebbee3b"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.9.0/rex-dash-v1.9.0-darwin-x64.tar.gz"
      sha256 "57e667b1a398df64c363f0d977df4bf97df02211431d934553209f0ab322705a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.9.0/rex-dash-v1.9.0-linux-arm64.tar.gz"
      sha256 "911b8f10875fb4187d671a0613d79eae45f84fe243063462bdd31779ac4e10ef"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.9.0/rex-dash-v1.9.0-linux-x64.tar.gz"
      sha256 "abae168012a6417ef4c6b83143800deb4daa7362dc9fb168af4ae2f95c8ac843"
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
