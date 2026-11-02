class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  url "https://github.com/gugahoi/rex-dash/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dedf1ca00dfc8ac69e61efbb57e5a2c1a39519a7a0b375712bb8100d546fa6a0"
  license "MIT"

  depends_on "gh"
  depends_on "node"

  def install
    bin.install "rex-dash"
  end

  test do
    assert_equal "ok", shell_output("#{bin}/rex-dash --test").strip
  end
end
