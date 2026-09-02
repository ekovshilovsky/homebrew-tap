class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.16.1/cloister_0.16.1_darwin_arm64.tar.gz"
      sha256 "08059e5fc6641c1df0aa29e31d4e02df7cbdc70f7ef1cfe8116d37f6ecf80f9d"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.16.1/cloister_0.16.1_darwin_amd64.tar.gz"
      sha256 "a926b5ac806c786f27b93e8d3b085ec618392f0691d013615f09d7149438bea8"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
