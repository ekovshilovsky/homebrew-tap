class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.2/op-forward_0.4.2_darwin_arm64.tar.gz"
      sha256 "8ad77935b8739b820894f21e23b5a2d6328fccf6cf38c606edaee2b5391fe593"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.2/op-forward_0.4.2_darwin_amd64.tar.gz"
      sha256 "5b580849c432dc549490395f16f2a79188bb6a04078343a8897d15af02de9bf3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.2/op-forward_0.4.2_linux_arm64.tar.gz"
      sha256 "5b36a92c6c1ed9264ae86f105e46fbd0f2800ea83300292a62d3461273a34ea3"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.2/op-forward_0.4.2_linux_amd64.tar.gz"
      sha256 "48597758b6f85dfaecba12ba7e612a2d418990b1b304b5f8b5806565cc1e7da2"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
