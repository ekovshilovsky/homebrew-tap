class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.7/cloister_0.7.7_darwin_arm64.tar.gz"
      sha256 "a7f0ebd5793959d75c268da8e1ffb873a1b3b8b6c207f994088d22de28479417"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.7/cloister_0.7.7_darwin_amd64.tar.gz"
      sha256 "d9cb096454ca83c88cfdb00658522be73a6abbf088b834683e35d52198477d4d"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
