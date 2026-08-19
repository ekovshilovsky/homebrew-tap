class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.9.0/cloister_0.9.0_darwin_arm64.tar.gz"
      sha256 "60559ec558e6339bf76b5c493fc5a84e12452b265d28651c5ebe768f8299fa27"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.9.0/cloister_0.9.0_darwin_amd64.tar.gz"
      sha256 "912666df5a327413e76c6a5f2f3e927a4bed9b6f7681d57cccb99619a65d0a6e"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
