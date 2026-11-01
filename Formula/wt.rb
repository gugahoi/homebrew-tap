class Wt < Formula
  desc "Git worktree manager with fzf pickers and tmux/Rex sessions"
  homepage "https://github.com/gugahoi/wt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.1.0/wt-v1.1.0-darwin-arm64.tar.gz"
      sha256 "d4ddecbb1983b83b3016246adc252edf3a02cea605ca79bf9ae319fb28c00056"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.1.0/wt-v1.1.0-darwin-amd64.tar.gz"
      sha256 "81431b7bbc6a149a42c14bfa3430217f409533eccda48c42b2ecab4bd3ff56d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.1.0/wt-v1.1.0-linux-arm64.tar.gz"
      sha256 "27da7be9a7350133b9b094548ec1439a31a3e3dbb611113c75146a22c215f2a4"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.1.0/wt-v1.1.0-linux-amd64.tar.gz"
      sha256 "98dd0a3c482f8c074e7ba82fcccbe088ea9ac14e90e1806abe0123fdb904631d"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git Worktree Manager", shell_output("#{bin}/wt --help")
  end
end
