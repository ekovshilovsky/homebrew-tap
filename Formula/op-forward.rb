class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.5.0/op-forward_0.5.0_darwin_arm64.tar.gz"
      sha256 "6ea0d979a5e0e00b619ba94d2b75679b326a848d6db4af640a5007ffc6d24b34"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.5.0/op-forward_0.5.0_darwin_amd64.tar.gz"
      sha256 "dd0ca6e76bdc49228063818d3629d445c7e104e727061a4fb8828368b9dc3c32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.5.0/op-forward_0.5.0_linux_arm64.tar.gz"
      sha256 "7bb92aa514fa54668cf95e7b84aad4820da478b7ca027764fd6e4113ffb48d7f"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.5.0/op-forward_0.5.0_linux_amd64.tar.gz"
      sha256 "2a75e24afe3fc045ced24eb76f9ccd59d1d17483e1bd8e79999ab7f3c1b1f296"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
