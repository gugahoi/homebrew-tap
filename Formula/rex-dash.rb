class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.10.0/rex-dash-v1.10.0-darwin-arm64.tar.gz"
      sha256 "ef8f46d7c3964a46270ea0f8707c2066a5abf3317268ec7a735dff39f4081c78"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.10.0/rex-dash-v1.10.0-darwin-x64.tar.gz"
      sha256 "9870cece6a3f8ebbd69977a009eab676021b526eb3482edec780275d53303724"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.10.0/rex-dash-v1.10.0-linux-arm64.tar.gz"
      sha256 "a45865f870e83318cb5354ec2f57635176c512c805251293dcd0c83482a84cb2"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.10.0/rex-dash-v1.10.0-linux-x64.tar.gz"
      sha256 "c6cda262577b8e47053911b83129d57f22af4b848e5fab304262e2c5f4f5ac6c"
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
