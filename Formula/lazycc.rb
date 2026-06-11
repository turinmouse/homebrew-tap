class Lazycc < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/lazycc"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.5/lazycc-aarch64-apple-darwin.tar.gz"
      sha256 "e8b3baf8783af1cb5940c1394fa204ce9f4e9eca4db401361d9610a2b1f6fd05"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.5/lazycc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b5fbbfc473aa21009a7652e8b8b0b6118d0a5767f03b3c621365a97b94d3a49"
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
