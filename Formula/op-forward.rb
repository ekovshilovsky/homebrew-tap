class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.1/op-forward_1.0.1_darwin_arm64.tar.gz"
      sha256 "2920931fd00df31ecfd3f7c734ca671a9f5c04dd420b4fd4139a7789611df63f"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.1/op-forward_1.0.1_darwin_amd64.tar.gz"
      sha256 "da9bc47521d8f50d67c2d351342d12eb4b5d37ceef50e4f3956bb4c8f69b6e68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.1/op-forward_1.0.1_linux_arm64.tar.gz"
      sha256 "f3098c2f01bc7b930f6061d9c70af1fadc58160cbe8270acf816562e8d9a3343"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.1/op-forward_1.0.1_linux_amd64.tar.gz"
      sha256 "7f973d1edc249d5e237666902e87ee265f0d94d791d173cb452e5dca6cabfcf1"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
