class Wt < Formula
  desc "Git worktree manager with fzf pickers and tmux/Rex sessions"
  homepage "https://github.com/gugahoi/wt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.5.1/wt-v1.5.1-darwin-arm64.tar.gz"
      sha256 "8f313ca311449f26046280d164cf4191b867988ca88b3b9f6c5bfd878d1fe95b"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.5.1/wt-v1.5.1-darwin-amd64.tar.gz"
      sha256 "5397d2c4a9ea084b98f3cae835145bd2d2b2fce282e16c0ad9f41e1d8f35a725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.5.1/wt-v1.5.1-linux-arm64.tar.gz"
      sha256 "0f7d95b75e0f5fcac39309bf298f2f85eb85322357e2bbe9ed9082f622fe41c1"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.5.1/wt-v1.5.1-linux-amd64.tar.gz"
      sha256 "7e07da209c74bcd3b75b5c60743c960ad5e4619665a54b601b0de19d4a918935"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git Worktree Manager", shell_output("#{bin}/wt --help")
  end
end
