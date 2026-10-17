class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.1.0/op-forward_1.1.0_darwin_arm64.tar.gz"
      sha256 "656100b9a38f87554de36623d4b843ef2cedac3983353a0b9a2120fe4f10069e"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.1.0/op-forward_1.1.0_darwin_amd64.tar.gz"
      sha256 "39ed6c6d8921c8f1982cdd75518b8d2b330bf626524c5867cd2158e812782462"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.1.0/op-forward_1.1.0_linux_arm64.tar.gz"
      sha256 "6266d1cc02ca9fa8f1318aedd0c942f84eecc04d25be1d7757dc271c76844b1f"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.1.0/op-forward_1.1.0_linux_amd64.tar.gz"
      sha256 "70b31688af41e5fb7c83df3c13ba70352a526341c39f4cbc594a1ddcb997d017"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
