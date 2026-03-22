class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.3.0/cloister_0.3.0_darwin_arm64.tar.gz"
      sha256 "3189151abc496beabf5b0a1ac1e65a435d3f4f23e4463264e0f397996b48a95e"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.3.0/cloister_0.3.0_darwin_amd64.tar.gz"
      sha256 "810ed08ef89f3bbe14882ca6247a719cb182fedc109254f65fdc8d61f6846009"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
