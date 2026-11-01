class Wt < Formula
  desc "Git worktree manager with fzf pickers and tmux/Rex sessions"
  homepage "https://github.com/gugahoi/wt"
  url "https://github.com/gugahoi/wt/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "07c7291f881cd007c9674d2ddd2cd6100d096410292bcfaaa702269f67c1cfc8"
  license "MIT"

  depends_on "fzf"
  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "bin/wt"
  end

  test do
    assert_match "Git Worktree Manager", shell_output("#{bin}/wt --help")
  end
end
