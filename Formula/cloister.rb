class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.14.0/cloister_0.14.0_darwin_arm64.tar.gz"
      sha256 "513a5d0692d6d9f6ba2e4d6d0c834964f999d0a491c52c93798df45f7814d32d"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.14.0/cloister_0.14.0_darwin_amd64.tar.gz"
      sha256 "a2c0ee8d54afa2f22b8f3a23be09f13de80ac1192e005a6227b225c3313d112d"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
