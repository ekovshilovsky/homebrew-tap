class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.9/cloister_0.7.9_darwin_arm64.tar.gz"
      sha256 "a07f516057215ee365d0c952e47f0851f66ce9f185bae99ef9f6b23c59b55f95"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.9/cloister_0.7.9_darwin_amd64.tar.gz"
      sha256 "4108d6f608191663a05f24fa4ab08f3a8915abbb93369d683381edc2bd8988d4"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
