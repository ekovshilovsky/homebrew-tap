class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.2.0/cloister_0.2.0_darwin_arm64.tar.gz"
      sha256 "1f6060d10fb0f2644376f59e0c889d8f0fbe18f84b61960b546ef3c47b7337b7"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.2.0/cloister_0.2.0_darwin_amd64.tar.gz"
      sha256 "1bb4c69da4718ca624de0c4ed96168d449fcf4416c46cd83371bf61d58de9792"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
