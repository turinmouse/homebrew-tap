class Capm < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/coding-agent-profile-manager"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.3/capm-aarch64-apple-darwin.tar.gz"
      sha256 "14e2af41090214fbbafb8e396085da823f4c67140dcdc3e19b0ade945b7de8aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/coding-agent-profile-manager/releases/download/v0.1.3/capm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b656d05d43459f7a8df1445bc17fbcda57cb4c8f64ee2b11a466fdf827cae52b"
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
