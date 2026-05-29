class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.0/cloister_0.7.0_darwin_arm64.tar.gz"
      sha256 "5e7274c8d8e4f77dae88d39de0336cdc2b655728f581591d2fec9a0d4eb1d94b"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.0/cloister_0.7.0_darwin_amd64.tar.gz"
      sha256 "af08daf8b97a3fe5c6e73877076b1e1d067a38e8c6fc272d91f91797b05bdff6"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
