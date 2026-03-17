class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.0.1/cloister_0.0.1_darwin_arm64.tar.gz"
      sha256 "6d920d4faaf8a6ba6116d04ca87d91f63b88b1de855d51b564170e322922a6ef"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.0.1/cloister_0.0.1_darwin_amd64.tar.gz"
      sha256 "e1cb89740aeae1f9e369b0f0d0db526bd530fc3a736886e45e63d2bd51315275"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
