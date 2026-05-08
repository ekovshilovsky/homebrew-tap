class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.14/cloister_0.6.14_darwin_arm64.tar.gz"
      sha256 "933ce9bee1c6c08c45e961c542e38ea42b936756754e322b9b8ee6939bef8d4c"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.14/cloister_0.6.14_darwin_amd64.tar.gz"
      sha256 "adf638cabee88198445300f7c4b4ec995468fc7700584afa9dfe6e074338626b"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
