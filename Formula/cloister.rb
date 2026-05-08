class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.18/cloister_0.6.18_darwin_arm64.tar.gz"
      sha256 "aad1f27be97acd7c8fe8b528b25c95da8ae6df4776eda1fde1730112795389c4"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.18/cloister_0.6.18_darwin_amd64.tar.gz"
      sha256 "ee80b18c9e90d0c94317a578f98fc3862cc1d4df4402c2b5a0fa833584291787"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
