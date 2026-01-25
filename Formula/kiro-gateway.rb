class KiroGateway < Formula
  desc "Proxy gateway for Kiro API - OpenAI and Anthropic compatible"
  homepage "https://github.com/if414013/rkgw"
  version "1.0.1"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "a7ea11455d4d13c075a13a4adb033d5fd8bb38f68532ba340efd8e7ff1578c1f"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "a62a90ab5581b3e1a8e2552e0d5e98f7c70432fc077c9e2806662afd5833b4d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9880b5a7161aebd7c9fbfc60f5a3a39784127f5253d34e0b05e6789eb966e0e"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66a66d3e19065cb137d0d4c36b75baeb86b94c068a99ae8b0bf1a3ec9d250135"
    end
  end

  def install
    bin.install "kiro-gateway"
  end

  test do
    assert_match "kiro-gateway", shell_output("#{bin}/kiro-gateway --help 2>&1", 2)
  end
end
