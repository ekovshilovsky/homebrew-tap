class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.2/op-forward_1.0.2_darwin_arm64.tar.gz"
      sha256 "9c4148fda25f0e4fe0d237fbc57b26a0509e5538d717420fe70182a3b1768408"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.2/op-forward_1.0.2_darwin_amd64.tar.gz"
      sha256 "30c2a6466ba399548701ba07b9d40d4f7bec34ea897089de35343c884c9e9321"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.2/op-forward_1.0.2_linux_arm64.tar.gz"
      sha256 "6e64478f1759a4d89dd4261a147e9f275fca31704e6207fb5de07e5cf5a5fe28"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.2/op-forward_1.0.2_linux_amd64.tar.gz"
      sha256 "e6358343cb3144955b86d593894bdbf2691b04f0a982411cff6668f9dc0057e9"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
