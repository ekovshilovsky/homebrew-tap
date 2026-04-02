class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.7/cloister_0.6.7_darwin_arm64.tar.gz"
      sha256 "40d6fc856a90cb88e9ec245e45d33b33d2d12bde99434f7a68edaaf615405d5b"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.7/cloister_0.6.7_darwin_amd64.tar.gz"
      sha256 "c16aecc711300968506b14dbac394dcaabfa5fa07ea3e4bba9d683145184bdac"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
