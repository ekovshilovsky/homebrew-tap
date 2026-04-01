class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.0/cloister_0.6.0_darwin_arm64.tar.gz"
      sha256 "09409b308a8eb62acb28d25d7b56afda61b9d6c5662e6be396b27ccffa87f413"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.0/cloister_0.6.0_darwin_amd64.tar.gz"
      sha256 "08905b61af4c6bbb4d72d834bd3a3b441e043bb918d995cce6767f5157a20d93"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
