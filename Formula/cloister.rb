class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.7/cloister_0.19.7_darwin_arm64.tar.gz"
      sha256 "3cda0895ede9ae676698368ddb3c61f4e4c2039254e3163116d6ae117b232da7"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.7/cloister_0.19.7_darwin_amd64.tar.gz"
      sha256 "1edde92ee76ecc4a710b19a0bfeaba9db9d70f942c231c40cc26facccae3d938"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
