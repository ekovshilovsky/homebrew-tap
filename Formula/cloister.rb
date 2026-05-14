class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.20/cloister_0.6.20_darwin_arm64.tar.gz"
      sha256 "6ce59fec41ce01150f6fe905c94a7d7b9484b5107268d4550302f35b34c8c26c"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.20/cloister_0.6.20_darwin_amd64.tar.gz"
      sha256 "3ab15e1b15807ca0457fc931046d5f9181afd4fb1cd7c4ef86383f87787b1fc5"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
