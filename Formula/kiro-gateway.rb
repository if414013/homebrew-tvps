class KiroGateway < Formula
  desc "Proxy gateway for Kiro API - OpenAI and Anthropic compatible"
  homepage "https://github.com/if414013/rkgw"
  version "1.0.2"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "a40a0fda496f6763e4203bd6def73841f24db379657b4ce0e0f31ae47b1ec14e"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "7774a1a60e5b58cce34be164b3c7c5d4d0915d241cb191ef5e1d484db490f728"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9bff94cb0e0b86184d17f5fce4840827b9f421ef5ad1169afea34b8314d800fd"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "932d175d5acfbc159732b408a684eaf316f9dacc6bca678705ae0849bfe685b5"
    end
  end

  def install
    bin.install "kiro-gateway"
  end

  test do
    assert_match "kiro-gateway", shell_output("#{bin}/kiro-gateway --help 2>&1", 2)
  end
end
