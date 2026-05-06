class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.10/cloister_0.6.10_darwin_arm64.tar.gz"
      sha256 "d4329bc054e86887a117ea202e937a23d6c1df7c61753e851171e1461b0a6496"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.10/cloister_0.6.10_darwin_amd64.tar.gz"
      sha256 "c03780e31b5a500c1886bb4676f04a24589f319700e35712ce59b56ca19a7fa5"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
