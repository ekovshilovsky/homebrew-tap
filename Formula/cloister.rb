class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.13/cloister_0.6.13_darwin_arm64.tar.gz"
      sha256 "8b0a65823660d6c265b26396c6fe483f7a473d5140094a1a022330b9faf30c1e"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.13/cloister_0.6.13_darwin_amd64.tar.gz"
      sha256 "10b15afa6de9a99956b5dced1506f64d76f1b294b7532fa1c9e2a741153fda54"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
