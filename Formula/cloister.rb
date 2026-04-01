class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.4/cloister_0.6.4_darwin_arm64.tar.gz"
      sha256 "d9bade88c6c6bc67a1b3b103f5bf2350fe69d101b3759da9fc908745a75c5ddd"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.4/cloister_0.6.4_darwin_amd64.tar.gz"
      sha256 "e19800e802b9fa49252597978047ce92aab389f8d88c3bed8f5aa713b10ef63e"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
