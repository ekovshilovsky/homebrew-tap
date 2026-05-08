class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.17/cloister_0.6.17_darwin_arm64.tar.gz"
      sha256 "04c71b6bb6b0ed9ab1753753c85b2cbf4190412024a8a9b35dfe0af719889a2c"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.17/cloister_0.6.17_darwin_amd64.tar.gz"
      sha256 "0e568fee018ac662426d176a5d183d5893024abb731d5ed3d682d07649cb82d3"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
