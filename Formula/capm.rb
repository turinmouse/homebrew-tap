class Capm < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/coding-agent-profile-manager"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.2/capm-aarch64-apple-darwin.tar.gz"
      sha256 "cc90c206a69240202cb08b63232aa6d42f638916dcc26d94da4cc1914a71d549"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.2/capm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "faa8e30134819678cccdfe9bf6837fdb4dabc105548b38f15c4155cd3928a643"
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
