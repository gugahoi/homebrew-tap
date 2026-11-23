class Wt < Formula
  desc "Git worktree manager with fzf pickers and tmux/Rex sessions"
  homepage "https://github.com/gugahoi/wt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.6.0/wt-v1.6.0-darwin-arm64.tar.gz"
      sha256 "ff68e2130d5756c4f5e6e82c0a42f2ac965f668dec9ba3b9709a2f25733ff1e9"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.6.0/wt-v1.6.0-darwin-amd64.tar.gz"
      sha256 "4352f5fdb3a44df639e407677d95f6c71710bf63e7dc0603453f23966f033038"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.6.0/wt-v1.6.0-linux-arm64.tar.gz"
      sha256 "727a81d92c9b2556fe0ff6f833ef602c191640665e7be2ff93f74226b9b89693"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.6.0/wt-v1.6.0-linux-amd64.tar.gz"
      sha256 "610a3839940596864c06c88f19efd0a685afcb863f79dcd40bd01034cf2d102f"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git Worktree Manager", shell_output("#{bin}/wt --help")
  end
end
