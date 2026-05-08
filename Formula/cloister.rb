class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.16/cloister_0.6.16_darwin_arm64.tar.gz"
      sha256 "e989613ec1f140ef1475709fc794f30cd01e04c8480992b80a854040a84cf13f"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.16/cloister_0.6.16_darwin_amd64.tar.gz"
      sha256 "fd2c9778290f497780f3871da6b3c793044e1473857634ecadad24dc0fe68923"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
