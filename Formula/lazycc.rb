class Lazycc < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/lazycc"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.6/lazycc-aarch64-apple-darwin.tar.gz"
      sha256 "c2c9ed6e19ec21a2e19683c0c6eb26d363f2ab72f27697900ad598e85640ad10"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.6/lazycc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "775c85f665deb775925ecd951ec479eada31690fa8b50b5f17e2325d44945f2d"
    end
  end

  def install
    bin.install "lazycc"
  end

  test do
    assert_match "lazycc #{version}", shell_output("#{bin}/lazycc --version")
    assert_match "unset OPENAI_API_KEY", shell_output("#{bin}/lazycc init zsh")
  end
end
