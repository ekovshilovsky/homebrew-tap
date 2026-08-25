class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.12.0/cloister_0.12.0_darwin_arm64.tar.gz"
      sha256 "eb3602c711eb8d856982ac25dd198e77bde7392308c18f1eba7a07e99624f1d9"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.12.0/cloister_0.12.0_darwin_amd64.tar.gz"
      sha256 "d6def18d64555d50a26cd1554f1b134571ff39a6ccd94eeef812c4264800c06e"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
