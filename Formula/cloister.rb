class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.1/cloister_0.19.1_darwin_arm64.tar.gz"
      sha256 "4992b862726b9b5d3b10dd528acf78fc35773c7656de17ba0c2a3bb9dcc7ac87"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.1/cloister_0.19.1_darwin_amd64.tar.gz"
      sha256 "df4b01c5c56bc0d20d086a97320913cc210109fc1ee2ce853d55617ce0a40bc3"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
