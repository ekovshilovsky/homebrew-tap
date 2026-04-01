class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.1/cloister_0.6.1_darwin_arm64.tar.gz"
      sha256 "36e26d0e999277f89ae27a3a296d7aa64af23e47d5af28fbc19fa24b6c6cb814"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.1/cloister_0.6.1_darwin_amd64.tar.gz"
      sha256 "d9461f5de832e98d8ae5f7abe6262d24940751638c483d038b3dfcca1249e153"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
