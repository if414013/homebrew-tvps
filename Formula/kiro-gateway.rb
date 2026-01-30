class KiroGateway < Formula
  desc "Proxy gateway for Kiro API - OpenAI and Anthropic compatible"
  homepage "https://github.com/if414013/rkgw"
  version "1.0.6"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-apple-darwin.tar.gz"
      sha256 "5fc9fc99e3a15593dc05397a5d191fe2d9107f07586124a0a0d7837d04846d73"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-apple-darwin.tar.gz"
      sha256 "c5128c72050ff13ee83d458b710098b7bdf4ea67009eaf11ceddfca07af5b4c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "496faf168c8127087067db314f026b7d13c04fbd93400963bb5b5e1bdfe37b86"
    end
    on_arm do
      url "https://github.com/if414013/rkgw/releases/download/v#{version}/kiro-gateway-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10f1042ebde0cd025a37498fe50aaa6f5e1240507cc5a183eedc0e35faa507fb"
    end
  end

  def install
    bin.install "kiro-gateway"
  end

  test do
    assert_match "kiro-gateway", shell_output("#{bin}/kiro-gateway --help 2>&1", 2)
  end
end
