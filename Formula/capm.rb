class Capm < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/coding-agent-profile-manager"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.4/capm-aarch64-apple-darwin.tar.gz"
      sha256 "6a41822092d896eb046248feed30d31763cfa9f31205522ccafe5ad8a2a41980"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.4/capm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "490efade0e0f26511c3da3f9b58a29199d30d3216110336efc9f89ea65a7440d"
    end
  end

  def install
    bin.install "capm"
  end

  test do
    assert_match "capm #{version}", shell_output("#{bin}/capm --version")
    assert_match "unset OPENAI_API_KEY", shell_output("#{bin}/capm init zsh")
  end
end
