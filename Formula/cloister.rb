class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.10.1/cloister_0.10.1_darwin_arm64.tar.gz"
      sha256 "0586f69953833481f868e75a2a32677d581f4eec09044af9e9ebaaa9972b3fb7"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.10.1/cloister_0.10.1_darwin_amd64.tar.gz"
      sha256 "02194ed2fef371d17c9af395c8de16f953d7f61197c4c626335704725259b2f0"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
