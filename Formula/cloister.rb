class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.11/cloister_0.7.11_darwin_arm64.tar.gz"
      sha256 "0ee4272e581af32c690d2f1853265e67aa122cc61f81658a0cae7fa5ab1a25c3"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.11/cloister_0.7.11_darwin_amd64.tar.gz"
      sha256 "a06d9aff82d8ab00f121649c28162756efb054535f29e9589be3fad033a8e608"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
