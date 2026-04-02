class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.6/cloister_0.6.6_darwin_arm64.tar.gz"
      sha256 "16bb10f7bcedda6597f3972b8e8a7e7800ac54e1eb75a8f3e244c625c9bf0667"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.6/cloister_0.6.6_darwin_amd64.tar.gz"
      sha256 "4d122bc0e5c7c2cee25f8400708377d5bf9c25e36ca8b636cbe65e629d1cf5b3"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
