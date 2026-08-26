class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.3/op-forward_0.7.3_darwin_arm64.tar.gz"
      sha256 "0ea9647d83b38e3f51f754d880caa58b0735281414d21f6e368607b72e3349c4"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.3/op-forward_0.7.3_darwin_amd64.tar.gz"
      sha256 "145ee700fe6d77b0180f77156149119734f5a60064c7f289e53f2438ecb05886"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.3/op-forward_0.7.3_linux_arm64.tar.gz"
      sha256 "4c95203d90f3b9073e0b76bc7d31562a2925fdbdd8ddbea40a38dc1369aa5918"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.3/op-forward_0.7.3_linux_amd64.tar.gz"
      sha256 "eec7645c547e504f95914f2a410026b2e2d2caa2b00d8005a9d7811b56c790c3"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
