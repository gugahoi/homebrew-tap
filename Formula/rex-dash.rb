class RexDash < Formula
  desc "Dashboard pane for Rex with agent fleet, PRs and Claude Code usage"
  homepage "https://github.com/gugahoi/rex-dash"
  version "1.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.8.1/rex-dash-v1.8.1-darwin-arm64.tar.gz"
      sha256 "e6f24ecab0549e64fc4d4e4596826c5385a041067cde68ab02ad8515049ed049"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.8.1/rex-dash-v1.8.1-darwin-x64.tar.gz"
      sha256 "dd640b91f977a49998689b2f10c821425666e8fc639bc691e3062f22cb124c80"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.8.1/rex-dash-v1.8.1-linux-arm64.tar.gz"
      sha256 "7ebf7a59d86ab7d0c51927bd582471394d0cdec809f51dd5f5234eaf7e51611a"
    end
    on_intel do
      url "https://github.com/gugahoi/rex-dash/releases/download/v1.8.1/rex-dash-v1.8.1-linux-x64.tar.gz"
      sha256 "b440a9a406910ef027e051f045c3789e3df540b27338976fc4c77fa2efb32af9"
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
