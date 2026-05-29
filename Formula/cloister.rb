class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.4/cloister_0.7.4_darwin_arm64.tar.gz"
      sha256 "888c9f21941c89c878201a3c0f74e4025e6ddffd09c8bf5360c0553dc43fa8f3"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.4/cloister_0.7.4_darwin_amd64.tar.gz"
      sha256 "70ec4622709f047e54a1a56c8ee1f7b6bffc2b06b17cc4a435b449c4e9601755"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
