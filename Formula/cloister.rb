class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.1/cloister_0.7.1_darwin_arm64.tar.gz"
      sha256 "fbbaebf0fcb504b03ffaaf22afd90ba16c5538addc212f634f754df778ee97bf"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.1/cloister_0.7.1_darwin_amd64.tar.gz"
      sha256 "c8e555658b5a56f9bd41e25aa6fef909a1a9d83294a94a589798f178bce48895"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
