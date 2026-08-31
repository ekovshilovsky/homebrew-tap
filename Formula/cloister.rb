class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.16.0/cloister_0.16.0_darwin_arm64.tar.gz"
      sha256 "ebce766f2c6b35f90d5c2adcf552d1ebdf7a186765f2de7faf11ad3aab8d4976"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.16.0/cloister_0.16.0_darwin_amd64.tar.gz"
      sha256 "106260734c8c6cd17cbd11d1aba502e511441faf937ad9d067589e2b1047d653"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
