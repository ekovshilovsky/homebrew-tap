class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.3/cloister_0.19.3_darwin_arm64.tar.gz"
      sha256 "d5c28ef7b3ecae62921674b6ed8117de6acbf336283bdbd8cf594f660a10bc99"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.3/cloister_0.19.3_darwin_amd64.tar.gz"
      sha256 "4ea8ebe6ab82e01ee1132ce17316538c531002f3bb94c133e1f51ab70a8f4bd0"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
