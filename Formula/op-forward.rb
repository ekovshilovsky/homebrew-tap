class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.6.1/op-forward_0.6.1_darwin_arm64.tar.gz"
      sha256 "ee2e047fb4ab3a15123a3613f1c03fa85e1312ded48d5bdaf7fa038976c2cb33"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.6.1/op-forward_0.6.1_darwin_amd64.tar.gz"
      sha256 "0bd7511954da89ddde4befc940bec0e7b4e0c8b9be46b2089769af0c076460c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.6.1/op-forward_0.6.1_linux_arm64.tar.gz"
      sha256 "ef7336f43e97a9d7d4d685c2a5a360c3accadc538e46a494c2a693725c2dc057"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.6.1/op-forward_0.6.1_linux_amd64.tar.gz"
      sha256 "67857df34167ff644109783b1153bd3fca9ad7a14f47e742ca786a4eab70995e"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
