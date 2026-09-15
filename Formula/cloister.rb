class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.2/cloister_0.19.2_darwin_arm64.tar.gz"
      sha256 "a88ed8b9b0598a425afeff2b3d85bdffd1cbe943255d0979aad67d1ee6dd4a4b"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.2/cloister_0.19.2_darwin_amd64.tar.gz"
      sha256 "8cf2f8f80535318c3f2877af859553dfbf85a824a7deb5fe289b2c9074296904"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
