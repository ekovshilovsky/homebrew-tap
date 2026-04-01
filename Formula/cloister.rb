class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.2/cloister_0.6.2_darwin_arm64.tar.gz"
      sha256 "ba255850573eb5cc84847d49dd9e987b1625f4f4246e87ad3d3346a0f541698a"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.2/cloister_0.6.2_darwin_amd64.tar.gz"
      sha256 "8332a21ef87dec806977afa27bde4efaaca9b4335fbe4ab63abe508f42194003"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
