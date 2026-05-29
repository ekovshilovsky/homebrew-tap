class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.6/cloister_0.7.6_darwin_arm64.tar.gz"
      sha256 "10ea37f2cd933c7b769b95c4e79c3105295e6a72f8d34e53d993c900c546245e"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.6/cloister_0.7.6_darwin_amd64.tar.gz"
      sha256 "a8d5a3e8cda03e74dc4bcfdec61098eeb7d290eaad9b72abdad24aafd90762e6"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
