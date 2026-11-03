class Wt < Formula
  desc "Git worktree manager with fzf pickers and tmux/Rex sessions"
  homepage "https://github.com/gugahoi/wt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.5.0/wt-v1.5.0-darwin-arm64.tar.gz"
      sha256 "0cf5d36a9be64d3d6f2c96cb3b069c60b82d4210ff5d4370491279cb26b620d2"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.5.0/wt-v1.5.0-darwin-amd64.tar.gz"
      sha256 "1cff3985e6eafd3fad8c003cf5a99db4384c9ab5a2239700687d643b5679e9d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.5.0/wt-v1.5.0-linux-arm64.tar.gz"
      sha256 "929ff2e194a0ca45f950d703435b9baf0616b130b29bd5e753499253c732a22d"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.5.0/wt-v1.5.0-linux-amd64.tar.gz"
      sha256 "6babed10cd03ab2702ed09f965407d9bb02b4522a40dc3490e239a6e0a616da5"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git Worktree Manager", shell_output("#{bin}/wt --help")
  end
end
