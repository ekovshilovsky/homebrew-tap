class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.23/cloister_0.6.23_darwin_arm64.tar.gz"
      sha256 "8519232d6fbd32079b09633d383ad0eb1cd7b98f9d39e18fe96731ab2aaccaf6"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.23/cloister_0.6.23_darwin_amd64.tar.gz"
      sha256 "b55805033f8b99c75cd547d92c774c211f447b1e567e0f2007a55f7c28bb0d19"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
