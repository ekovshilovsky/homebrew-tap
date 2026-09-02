class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.18.0/cloister_0.18.0_darwin_arm64.tar.gz"
      sha256 "74846cd6cbb75c701d919156b5e63854759a14a8ac52480ff31d1a2259708212"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.18.0/cloister_0.18.0_darwin_amd64.tar.gz"
      sha256 "c6d5f95362400de0e751979d096041ac83ed67b96fdb9e27bbf48a8c7f3cc7fd"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
