class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.0/op-forward_0.7.0_darwin_arm64.tar.gz"
      sha256 "8210e0e02aa90c5683c50680860c75a787c5fda87c7ea68c5d7b00416e6d4d58"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.0/op-forward_0.7.0_darwin_amd64.tar.gz"
      sha256 "5d7047cba342213103ffc4ffeb3fcda2f0fde0203d31dd49ab3729f6c9e1ff53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.0/op-forward_0.7.0_linux_arm64.tar.gz"
      sha256 "333286e1b61eb658d8eb12b68a6b16426cbf8cadb7868d61d28acfa0dec38bc9"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.0/op-forward_0.7.0_linux_amd64.tar.gz"
      sha256 "ce27d00b5826545c610bf5aa20f7eb571bb1d6abf55b352cb539d18610a7fb72"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
