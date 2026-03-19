class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.1.1/cloister_0.1.1_darwin_arm64.tar.gz"
      sha256 "a304a6216226982e8cb40e95f84ee5e8012b6b278fc09da7f4954f27d8892d62"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.1.1/cloister_0.1.1_darwin_amd64.tar.gz"
      sha256 "73f99c6282e9b2983e5e7e1da60fae2781968d36944afdcdf1071744ced3818b"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
