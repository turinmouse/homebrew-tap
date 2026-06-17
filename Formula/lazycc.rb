class Lazycc < Formula
  desc "Manage coding-agent API provider profiles"
  homepage "https://github.com/turinmouse/lazycc"
  version "0.2.7"

  on_macos do
    on_arm do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.7/lazycc-aarch64-apple-darwin.tar.gz"
      sha256 "39e559936996754ad1249f147fe6dceef14555d37dfbaaad94e9e552b76ba997"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/turinmouse/lazycc/releases/download/v0.2.7/lazycc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a044c2300fede9362455b2a16cdf4c834a9e690912d14b2406637600b6ae8ef"
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
