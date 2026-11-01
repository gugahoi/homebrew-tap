class Wt < Formula
  desc "Git worktree manager with fzf pickers and tmux/Rex sessions"
  homepage "https://github.com/gugahoi/wt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.3.0/wt-v1.3.0-darwin-arm64.tar.gz"
      sha256 "c1147b37bda120a77e8a12efe0ef0066548d38497d5f5228e946d4d918cf129c"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.3.0/wt-v1.3.0-darwin-amd64.tar.gz"
      sha256 "bbf311457ffb13207b071346eb9049b6fa7e21e26650351e811d02ecdfcd9d0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.3.0/wt-v1.3.0-linux-arm64.tar.gz"
      sha256 "78e8e294dfe347156239db49f3a8872a2d9cacf25c561494714ce6df296afa6f"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.3.0/wt-v1.3.0-linux-amd64.tar.gz"
      sha256 "a44f3dddce19cca950e0765d95df4bc3f7569d829c31eb108000cc42602e71a2"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git Worktree Manager", shell_output("#{bin}/wt --help")
  end
end
