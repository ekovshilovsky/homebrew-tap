class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.1/op-forward_0.7.1_darwin_arm64.tar.gz"
      sha256 "1398ffbc2cce4e572c64e489e917631793168f3bb1cc66e7f035c82a1e542047"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.1/op-forward_0.7.1_darwin_amd64.tar.gz"
      sha256 "01641cc43b0cdc836ff69f6aeca85a87a3779305b6d01bc5323edcfe5373ae90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.1/op-forward_0.7.1_linux_arm64.tar.gz"
      sha256 "0af8162b068b1140c29cd648dd8c2edfdaf74dd3290dd26b895c47b65115a97a"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.1/op-forward_0.7.1_linux_amd64.tar.gz"
      sha256 "566c57dd82718da807786ee7e21fe49ef0eb8e8db80f5be5a61f9d68f1a85862"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
