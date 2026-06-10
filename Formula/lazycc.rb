class Lazycc < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/lazycc"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.1/lazycc-aarch64-apple-darwin.tar.gz"
      sha256 "035b0b570d5baaf68e2c77379d6087b41535fa430ec8044a74caf23cf74d9b36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.1/lazycc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bff13bd789160c21af03c3165c59456bec73cb517642a457a345d787707609a3"
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
