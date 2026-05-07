class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.12/cloister_0.6.12_darwin_arm64.tar.gz"
      sha256 "a82cbe0add17e40366c6aeea24afecdabdf458e1c9d6242f61ead7f4d860d923"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.12/cloister_0.6.12_darwin_amd64.tar.gz"
      sha256 "6b502b3516d0805696483b2b785e21cc2e5b13b78ca8fb6e5aa66e849c6f62b1"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
