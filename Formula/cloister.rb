class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.12/cloister_0.7.12_darwin_arm64.tar.gz"
      sha256 "6e04fff334c6b3672731ddef3c746483bace4cb0b86fb43cf17d7b9a863d7c00"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.12/cloister_0.7.12_darwin_amd64.tar.gz"
      sha256 "ecd08aa6665f17fdf6a3dd7facb9333f2208a9321a534ee7e2b2def61fec7409"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
