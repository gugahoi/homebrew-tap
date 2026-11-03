class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  url "https://github.com/gugahoi/rex-dash/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "90bef7cccf3dc924ebddfb37e2367ac2551e06b73952f692ed1f1a9395d9ff08"
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
