class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.13.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.13.3/cloister_0.13.3_darwin_arm64.tar.gz"
      sha256 "f976c053b7aa9f5152b5c1c36a810c104cb964d96c56f38eb80720be76fcc764"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.13.3/cloister_0.13.3_darwin_amd64.tar.gz"
      sha256 "3f81c4117df0750a05a9d80e8c3551b3f454101000413ca8807b7d194591f5fb"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
