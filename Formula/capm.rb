class Capm < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/coding-agent-profile-manager"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.5/capm-aarch64-apple-darwin.tar.gz"
      sha256 "e67371f8be96dcf0140ecef7770ad9a5d55c490c2dcdfb03a4464d1a8d754bc0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.5/capm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7082b06af78d78d6ec696466e473c5edd6afbb0671dc5f0c6969752ab721921"
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
