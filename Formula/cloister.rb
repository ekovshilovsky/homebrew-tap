class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.8.0/cloister_0.8.0_darwin_arm64.tar.gz"
      sha256 "40a4409feb5c4615ba59758ba25f6a626dde49e5dcce613e5ba63cd85f066db2"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.8.0/cloister_0.8.0_darwin_amd64.tar.gz"
      sha256 "900e1a7e857fdd63ca6fc5237038b5d88e4f7c33a2838f3956292b24a35cf971"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
