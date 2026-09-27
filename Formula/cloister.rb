class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.8/cloister_0.19.8_darwin_arm64.tar.gz"
      sha256 "c6521de2dbd9c67aae406cf6967f4748645949cd87600c126d27e5fbf3d004c5"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.8/cloister_0.19.8_darwin_amd64.tar.gz"
      sha256 "60e35644538a4ae62850138c9b787442450f5c452d007706597a35898624b23c"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
