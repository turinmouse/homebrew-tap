class Capm < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/coding-agent-profile-manager"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.6/capm-aarch64-apple-darwin.tar.gz"
      sha256 "8b7984662826b3941588a164c1d418a9b8da31184875e3668769a81f08059620"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.6/capm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "100007a5f7c991ab8b51a8eb9623f97d30f3b41983d290621b7d91efd744ae59"
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
