class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.3/cloister_0.7.3_darwin_arm64.tar.gz"
      sha256 "017cd4f8832f2308e606eb97dd9057ba7cdfacab9b9c5f7f7a6175d936b05818"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.3/cloister_0.7.3_darwin_amd64.tar.gz"
      sha256 "d2d44fbd6a4f4d33fb05389f9fd8f409a6b0131de7a6ae8c44e830cf73f2b8ea"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
