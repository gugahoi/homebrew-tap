class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.12.0/rex-dash-v1.12.0-darwin-arm64.tar.gz"
      sha256 "0d1250b92c725349c70c6e6a54a0e43f92f6bc235d8e143a11de2f152e56a2a0"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.12.0/rex-dash-v1.12.0-darwin-x64.tar.gz"
      sha256 "628eefe0dc74069a4541b8241aeee17024059f7aedd4ae55b6e5aa0213503474"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.12.0/rex-dash-v1.12.0-linux-arm64.tar.gz"
      sha256 "963d9cc6972d777f906965ef358c75cd275cca49c0912cb1c5a6f7c9c7874737"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.12.0/rex-dash-v1.12.0-linux-x64.tar.gz"
      sha256 "1d36de95ae12db5ad54b5eebb3bf83dc964fe724d11be10ad189c45eabac13fd"
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
