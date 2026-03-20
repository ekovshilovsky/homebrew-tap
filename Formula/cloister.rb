class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.1.4/cloister_0.1.4_darwin_arm64.tar.gz"
      sha256 "78e0649e7ccfc568dbf57e73785c936bf329b9d91a969968f3bae89882d5e2ea"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.1.4/cloister_0.1.4_darwin_amd64.tar.gz"
      sha256 "8fdd0a91e8aed40f0e66de149588928eef46020543149c31547097dc5edb0a7f"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
