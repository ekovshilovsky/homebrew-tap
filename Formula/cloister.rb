class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.3/cloister_0.6.3_darwin_arm64.tar.gz"
      sha256 "97929162671c80f2305e2a26093fa510d6c5339458beaa3a0158b06b981340af"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.3/cloister_0.6.3_darwin_amd64.tar.gz"
      sha256 "f74d3dbeafabf1d19004b1d4f8f2a6fdadcfc7252e7a0d427de72b82230f785e"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
