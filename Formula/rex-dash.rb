class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  url "https://github.com/gugahoi/rex-dash/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "449e24c2ea37efce7bdab240160eb9b85432605b0576f61b2a735128d8ebd759"
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
