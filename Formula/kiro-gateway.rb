class KiroGateway < Formula
  desc "Proxy gateway for Kiro API - OpenAI and Anthropic compatible"
  homepage "https://github.com/if414013/rkgw"
  version "1.0.0"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "d9dbc909e99e622d27ee8126f012bea8fd8665044de36a0a5f973a6d34b2ea9d"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "e450674f5c4a7899edeb06d322fbfa07be345a5f4c1812e84985a561449d1139"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97d89018f26a1cc268882565d8701c546f603af2c2679960f326572e95571a9b"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73c38df7133b6d4f5d31d18d135508ae91090e9d9bfc96d780d7e15a6aa62f52"
    end
  end

  def install
    bin.install "kiro-gateway"
  end

  test do
    assert_match "kiro-gateway", shell_output("#{bin}/kiro-gateway --help 2>&1", 2)
  end
end
