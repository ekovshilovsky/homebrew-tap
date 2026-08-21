class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.10.0/cloister_0.10.0_darwin_arm64.tar.gz"
      sha256 "1113bdfe4e7695f50ccfd1b453e8b3095184759d0257c4202a5e05a399292747"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.10.0/cloister_0.10.0_darwin_amd64.tar.gz"
      sha256 "f94bba8dd8e3b8c3e6e2f035af28e032d4aa91ba67989cc3816e4ac2bd18679f"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
