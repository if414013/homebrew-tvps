class KiroGateway < Formula
  desc "Proxy gateway for Kiro API - OpenAI and Anthropic compatible"
  homepage "https://github.com/if414013/rkgw"
  version "1.0.7"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "5977165b5dfa8b0b5d570daa7ecc9a76c9b0de9dbf39c3e2cb8f23dcd344f896"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "ec615c033ca5f7206c8b2d4602e2e2a6f682f70920fd01f54de67058b3a97793"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d99267b4fde80cb8cc64e653dd232cef7d9b80e939296ae58be948f39d8579f"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc135b13240ea5d84c118bdbb0971359e83e30130c422efffc7a62f311257aab"
    end
  end

  def install
    bin.install "kiro-gateway"
  end

  test do
    assert_match "kiro-gateway", shell_output("#{bin}/kiro-gateway --help 2>&1", 2)
  end
end
