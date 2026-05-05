class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.8/cloister_0.6.8_darwin_arm64.tar.gz"
      sha256 "854447a7640b103c70bc61cca016869ef85ca6a81d150d92e314d7cb3339c213"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.8/cloister_0.6.8_darwin_amd64.tar.gz"
      sha256 "331796e2cbd68a041896d311a09e696ecd2a9f62c776edc5be6a1a7d6b28130a"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
