class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.11.0/cloister_0.11.0_darwin_arm64.tar.gz"
      sha256 "53b63eb3b511640fc7a5a8aae7a2d1c819a5a7998ae7854d1009a3ed38c64a03"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.11.0/cloister_0.11.0_darwin_amd64.tar.gz"
      sha256 "76684af002fb84c05ceb0115f308aa5bedae18b8d50bbc8cd1761ce586897fd7"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
