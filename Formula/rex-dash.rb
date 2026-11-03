class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  url "https://github.com/gugahoi/rex-dash/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "dd9f49b42dcf8049bd9ca9034ac2c8d8136a88b6454f85e86d088198fdfb0cad"
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
