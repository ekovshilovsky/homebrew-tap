class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.5/cloister_0.19.5_darwin_arm64.tar.gz"
      sha256 "af49b5913ecf4bb3cfe5707ab54796f34e1cd4a925f9b5dd885859a7f345d19c"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.5/cloister_0.19.5_darwin_amd64.tar.gz"
      sha256 "951763b5f0625c7a9ed779146710f50927746d163eeccfd9b119ba5e419c2ac1"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
