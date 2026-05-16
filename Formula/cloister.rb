class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.22/cloister_0.6.22_darwin_arm64.tar.gz"
      sha256 "f7582894313eade2e26a7e7889aef933c3531d16ecd736a8fb89ff3d401b5497"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.22/cloister_0.6.22_darwin_amd64.tar.gz"
      sha256 "8e2c5dccaae6069f247201b6fc1abf6f4566c1a26ff256fe642a48317afdfac1"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
