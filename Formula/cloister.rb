class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.17.0/cloister_0.17.0_darwin_arm64.tar.gz"
      sha256 "5690b766e4d8ccf70448baff82148c850389dc96f48ac41f9cc5578ed7cae6a1"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.17.0/cloister_0.17.0_darwin_amd64.tar.gz"
      sha256 "ab8c8e83acbafd61719fe9b6e2b3426e724cf128978ea6d4382451217a8ebe20"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
