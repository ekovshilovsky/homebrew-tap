class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.3.0/op-forward_0.3.0_darwin_arm64.tar.gz"
      sha256 "8bee8a5b94ff16115f6b085890b3364ada5d7a0745810f22d9747587073b47eb"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.3.0/op-forward_0.3.0_darwin_amd64.tar.gz"
      sha256 "23df3ed3b8555951ba7152290207d60a54aa9b646769da2c654fabf0523f916b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.3.0/op-forward_0.3.0_linux_arm64.tar.gz"
      sha256 "60238db904c65596bb51fc41650c6ce428d42c2bf7f1cbdf7ff6eab3d66c9382"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.3.0/op-forward_0.3.0_linux_amd64.tar.gz"
      sha256 "ee07ccd3223b03750527f900bf05d770f7722c2f8937cd3be2881c146e3093e4"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
