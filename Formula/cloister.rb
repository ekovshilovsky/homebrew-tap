class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.5/cloister_0.7.5_darwin_arm64.tar.gz"
      sha256 "8ae15670b9cf61dd8a3ca33d06e09df68779c09b423d8ccbf6e18edaa052fa15"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.5/cloister_0.7.5_darwin_amd64.tar.gz"
      sha256 "0399563e2d29fa8b940d13453755e52c85acf1615ac91af17643f2605bb05093"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
