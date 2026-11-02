class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  url "https://github.com/gugahoi/rex-dash/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "014021e9e056c3c7bf233f5fecd5e1c961e8deaaaa47b38c50ed555068fb318d"
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
