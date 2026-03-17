class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.3/op-forward_0.4.3_darwin_arm64.tar.gz"
      sha256 "dde8e133194f178e01d981531766bf1d0488a01bcaf28d2b07df2a988b61e963"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.3/op-forward_0.4.3_darwin_amd64.tar.gz"
      sha256 "ef33aacb36cb8eab84ee655a35a92e02d37fbc88aeeb5a0b6963f3ea43219ab9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.3/op-forward_0.4.3_linux_arm64.tar.gz"
      sha256 "f66bb623a55ef7be2df11f2d40f40f0156be01c67123ec62e44de1387c7caacf"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.3/op-forward_0.4.3_linux_amd64.tar.gz"
      sha256 "c9488cae079c6199887f994cfc8a47860281ab9cc9c30021f889666f0919e30e"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
