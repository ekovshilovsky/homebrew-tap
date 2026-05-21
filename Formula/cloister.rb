class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.24/cloister_0.6.24_darwin_arm64.tar.gz"
      sha256 "1767f259302988765f003810ff6f7f898aac4d4709e145d2ee16eabe2814313d"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.24/cloister_0.6.24_darwin_amd64.tar.gz"
      sha256 "13b0754ca581d8a7daf7aa2cb2bbd594d6f3e8b33427f5a157144295b1178c29"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
