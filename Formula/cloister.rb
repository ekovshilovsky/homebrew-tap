class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.10/cloister_0.7.10_darwin_arm64.tar.gz"
      sha256 "93cae8be86638571440041584599b3f3194c27a3eed7f029dcea55ee3b5f4203"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.10/cloister_0.7.10_darwin_amd64.tar.gz"
      sha256 "760e58c4a1d5e4257580186d238ed7e0fb6922c00d45e8c47511c70b563ecc9d"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
