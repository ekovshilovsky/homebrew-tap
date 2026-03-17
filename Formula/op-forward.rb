class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.0/op-forward_0.4.0_darwin_arm64.tar.gz"
      sha256 "473296bb38114b5a5a522463ab325e7c7667f1feaaf3bfe1516be2ab374a451b"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.0/op-forward_0.4.0_darwin_amd64.tar.gz"
      sha256 "05ec587652f1e20f7f0cb90f353b7d1f629f1c4c5dee4c80d8826af43a6fda94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.0/op-forward_0.4.0_linux_arm64.tar.gz"
      sha256 "a2966883c14865690f695c53c888ab4adc4216bd45e38c205ceafff7c58b0019"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.0/op-forward_0.4.0_linux_amd64.tar.gz"
      sha256 "487fb3c907159c0da292aaaec1da06a252e399c41b9e8014d14d8655882c48d4"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
