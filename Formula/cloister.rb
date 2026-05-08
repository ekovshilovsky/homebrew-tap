class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.15/cloister_0.6.15_darwin_arm64.tar.gz"
      sha256 "64fcb724ce924fea675fa634bbd423b5dbdf67f9853d37f5fe09a00bef665b2c"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.15/cloister_0.6.15_darwin_amd64.tar.gz"
      sha256 "d2e903bb5ccb4685efc9d84e3a378380b84ecdaf121ea3798ea9ee20404c10ed"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
