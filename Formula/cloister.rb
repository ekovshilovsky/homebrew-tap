class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.16.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.16.2/cloister_0.16.2_darwin_arm64.tar.gz"
      sha256 "033fa401177413bd32ae33f8339eb85c17b80bebee7111528f32b79a8635e665"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.16.2/cloister_0.16.2_darwin_amd64.tar.gz"
      sha256 "ca3501ce1537b0e04a5e90c6c2b19c6a104989c7fc428f34c6a37872be704c92"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
