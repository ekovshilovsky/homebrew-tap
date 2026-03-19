class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.1.3/cloister_0.1.3_darwin_arm64.tar.gz"
      sha256 "83a7fc83eae00166ccf6805d16fc53d1a8b7e18422cf2f03336827da3452693c"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.1.3/cloister_0.1.3_darwin_amd64.tar.gz"
      sha256 "8d48787f2312b89b5abf15093d88fa1d41d26241dae66b019da6e413df769a53"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
