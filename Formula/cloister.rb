class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.25/cloister_0.6.25_darwin_arm64.tar.gz"
      sha256 "f33666434875ebbe2f6b74fa7ed9ffcd20c0b631ad726cdc8435e812ca962fdb"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.25/cloister_0.6.25_darwin_amd64.tar.gz"
      sha256 "3df4fe23e8cab1a7209331fdecae489b9c30454a8ba15397aeb89af222b8dade"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
