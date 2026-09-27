class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.6/cloister_0.19.6_darwin_arm64.tar.gz"
      sha256 "5dcda8ba090eadc21875b0e44938dde11410b8ee45f53a19a3bb00d2781d03de"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.6/cloister_0.19.6_darwin_amd64.tar.gz"
      sha256 "b1ca13f8abdbc370fa655644f3329dce9901abb377248923299cec56c1db30a0"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
