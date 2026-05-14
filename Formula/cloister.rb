class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.19/cloister_0.6.19_darwin_arm64.tar.gz"
      sha256 "12d6f0d8fac68bfe5db936fa64ba813ba64b7086b5defbd20fe55ba00d3424b2"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.19/cloister_0.6.19_darwin_amd64.tar.gz"
      sha256 "9aaff370e912bf54665f9ccc704b4f6610c17695b08886bceec2dfc22e093290"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
