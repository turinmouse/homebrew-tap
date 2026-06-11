class Lazycc < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/lazycc"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.4/lazycc-aarch64-apple-darwin.tar.gz"
      sha256 "276c0ac3d5c65282077d11f24d662c07ea2e8f7821b2ed1bb0fb7b5b761f3d9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.4/lazycc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b8dd865629cc40c20a1d7cb63f8e5241896d06de0214d7803db69eb54266218"
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
