class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.1.0/cloister_0.1.0_darwin_arm64.tar.gz"
      sha256 "9c565b179fc282bf80c5470600c8e39bab267e62f645342ade36f1e010b3094e"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.1.0/cloister_0.1.0_darwin_amd64.tar.gz"
      sha256 "1fe68a1a84e368598f83948fe0bc2159e3df4f9ff6bba0a75f4a9ab39880a4b7"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
