class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.16.0/rex-dash-v1.16.0-darwin-arm64.tar.gz"
      sha256 "6f426fb71fcef9f9b6eb3bf8fcba11debb6816c6f4a194f5a22a0d797e55e88c"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.16.0/rex-dash-v1.16.0-darwin-x64.tar.gz"
      sha256 "e45416ccd6c3b32ee9b53f3d8f4996aa1dbed8bcc624487fccde0a11ebb291ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.16.0/rex-dash-v1.16.0-linux-arm64.tar.gz"
      sha256 "a8e73752a14649c11c8173721da0a243a3cf27cb976d031f45ce0a2b4c2b33c3"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.16.0/rex-dash-v1.16.0-linux-x64.tar.gz"
      sha256 "6ee364e15d05a72aa89c374a196c313b425ac025fd45a75fd87ee7c49a74c08a"
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
