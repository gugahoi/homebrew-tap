class Wt < Formula
  desc "Git worktree manager with fzf pickers and tmux/Rex sessions"
  homepage "https://github.com/gugahoi/wt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.2.0/wt-v1.2.0-darwin-arm64.tar.gz"
      sha256 "f4e76eb54632cba4d096d584514fa4f8540d0893501ca01b3496b58c5c84d1ae"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.2.0/wt-v1.2.0-darwin-amd64.tar.gz"
      sha256 "ad0600fbd3578c3c42b58455f824248e54da357c0a520de258f1355b5dc72b01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.2.0/wt-v1.2.0-linux-arm64.tar.gz"
      sha256 "fe91d3a192370ac6650ae692d6f832d39bf7813bffd67158c504b9c28e29518c"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.2.0/wt-v1.2.0-linux-amd64.tar.gz"
      sha256 "81a5a7227aec67413d536a328a65ada768b7540496c100f7af56a79ab2220eee"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git Worktree Manager", shell_output("#{bin}/wt --help")
  end
end
