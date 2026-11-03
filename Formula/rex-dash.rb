class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  url "https://github.com/gugahoi/rex-dash/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "c7e30c1ba637f9f3bedb65b8aa037f2ed10fe6c453659de52efaf8794be5a882"
  license "MIT"

  depends_on "gh"
  depends_on "node"

  def install
    libexec.install "rex-dash", "lib"
    (bin/"rex-dash").write <<~SH
      #!/bin/sh
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/rex-dash" "$@"
    SH
    chmod 0755, bin/"rex-dash"
  end

  test do
    assert_equal "ok", shell_output("#{bin}/rex-dash --test").strip
  end
end
