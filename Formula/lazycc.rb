class Lazycc < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/lazycc"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.2/lazycc-aarch64-apple-darwin.tar.gz"
      sha256 "afee5387ebcd1f61701d6ebe21a166dd92259eaeb3433335a814fe0276f2c719"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.2/lazycc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4b7fb5ac999f52c37bf0abb6b19a2f075a29979a57f7aa191ba65358b07a3da"
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
