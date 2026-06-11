class Lazycc < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/lazycc"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.3/lazycc-aarch64-apple-darwin.tar.gz"
      sha256 "47382c307b557a5bf827cbe7272e430fbf24f7cba5a825c68ee20332865553e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.3/lazycc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9fae60b437266481d781ce7d0dd61a1561aceabfe3cad21f582cef8f63d7a93"
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
