class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.5.0-alpha.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.5.0-alpha.1/cloister_0.5.0-alpha.1_darwin_arm64.tar.gz"
      sha256 "d4606fb6e28986602aba8053f5faecb9aa060cc3714a0bb230ac24436e414bdd"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.5.0-alpha.1/cloister_0.5.0-alpha.1_darwin_amd64.tar.gz"
      sha256 "632ada88d894b11657103378252476d3e3e15e64a9e5bbcb09459b03e250c466"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
