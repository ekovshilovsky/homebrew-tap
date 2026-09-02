class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.0/cloister_0.19.0_darwin_arm64.tar.gz"
      sha256 "dbee6782e49c3677594ffe3413c85161f1368b903260e5316738d706df4e707f"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.0/cloister_0.19.0_darwin_amd64.tar.gz"
      sha256 "5fed8589c6b1e5bc1ac20d3d50d15a516d4b972945f160fc54a6f9cba27e6a00"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
