class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.13.1/cloister_0.13.1_darwin_arm64.tar.gz"
      sha256 "e77665e9903b7014174fe420b9f021cae55e3a6cc0f6c2aa3f8e1fd588e41dc5"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.13.1/cloister_0.13.1_darwin_amd64.tar.gz"
      sha256 "a25bd114fcb2dd181b45101c65495c07a4a1b0a7cf633b2e1ee79fcb7b1a9d5a"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
