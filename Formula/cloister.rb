class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.4/cloister_0.19.4_darwin_arm64.tar.gz"
      sha256 "4244174d2a8acfb85e21ce340c83acc0e01b46c0244ec3cf26d530ad0604c4cb"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.4/cloister_0.19.4_darwin_amd64.tar.gz"
      sha256 "4413889c93fa3749d92319eb9e1717489c79477906880f7be1caa3963eb188a7"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
