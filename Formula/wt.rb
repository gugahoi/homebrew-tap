class Wt < Formula
  desc "Git worktree manager with fzf pickers and tmux/Rex sessions"
  homepage "https://github.com/gugahoi/wt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.4.0/wt-v1.4.0-darwin-arm64.tar.gz"
      sha256 "8d2e59ee5a0df0f4772b547135601162dac24c4ee4dec66864e3c61b17334235"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.4.0/wt-v1.4.0-darwin-amd64.tar.gz"
      sha256 "b0028456066f3e25940fea4502a56bef76500938f02ca12aac2050bdee19a529"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gugahoi/wt/releases/download/v1.4.0/wt-v1.4.0-linux-arm64.tar.gz"
      sha256 "2d7c8306bc0cebe82947c968b4dba51eda22f86910621088f9f93e58b949200a"
    end
    on_intel do
      url "https://github.com/gugahoi/wt/releases/download/v1.4.0/wt-v1.4.0-linux-amd64.tar.gz"
      sha256 "378c455a8e5e994b4c20fc29b98e6a56c3dc47e0b42bedc642bba11f387ee86a"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git Worktree Manager", shell_output("#{bin}/wt --help")
  end
end
