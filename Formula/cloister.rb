class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.8/cloister_0.7.8_darwin_arm64.tar.gz"
      sha256 "83638227c6bdb7253a93e7e7c42163b4081bcc01f534dc147c0d2b791a91af69"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.8/cloister_0.7.8_darwin_amd64.tar.gz"
      sha256 "5ec13590aadec55027a425db16db94510a948ee6ceba3eba6fa7237bd1f44e14"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
