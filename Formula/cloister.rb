class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.13.0/cloister_0.13.0_darwin_arm64.tar.gz"
      sha256 "e0cc14f1c9d3651744c5494c992424a79bb31191897196e55ec1095a70757427"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.13.0/cloister_0.13.0_darwin_amd64.tar.gz"
      sha256 "f476ab619df8ad01ae794e7941022d6f13ed0b3694c14ee0bbb3d7c9a5cbd8a5"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
