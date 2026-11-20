class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.15.0/rex-dash-v1.15.0-darwin-arm64.tar.gz"
      sha256 "fe17b7929a73f0103e15b908cb11c4b86190bb1b22095ae270c77405fe584ac2"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.15.0/rex-dash-v1.15.0-darwin-x64.tar.gz"
      sha256 "ec0f2acb2dec17062a6c68c93cad6f20096b95987d86bd837c4331c03762c9f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.15.0/rex-dash-v1.15.0-linux-arm64.tar.gz"
      sha256 "75a96e78f026a8fb18c317176e83716e021d0706545fac65021779920d76b935"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.15.0/rex-dash-v1.15.0-linux-x64.tar.gz"
      sha256 "6116cc5b45d625864ad218745c524eb8dc2217d88d22405e7269dd2f8d989580"
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
