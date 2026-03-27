class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.5.1/cloister_0.5.1_darwin_arm64.tar.gz"
      sha256 "a35ee9c0a9aa211ea1346a111224376bd1cbdeffbabc94ec5e9c499e069490c9"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.5.1/cloister_0.5.1_darwin_amd64.tar.gz"
      sha256 "152c2cc37d99957fb57c5bc4a66cdf5cc289c2478d066bbed22f9ccccee1147d"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
