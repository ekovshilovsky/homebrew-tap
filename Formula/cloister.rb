class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.9/cloister_0.6.9_darwin_arm64.tar.gz"
      sha256 "748c32dfba99ea397d0b29c801da83b33cde63a8dd0a16e4143e28a9392253bd"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.9/cloister_0.6.9_darwin_amd64.tar.gz"
      sha256 "29834b2e6684f95b707da620293cdcb13017749dfa6006f04e29699f09828fda"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
