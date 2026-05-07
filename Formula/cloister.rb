class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.11/cloister_0.6.11_darwin_arm64.tar.gz"
      sha256 "67f05aaefc0e71a34d88394a8bb75df5159f21e26e9ae4fcfdc4533424f9fb3d"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.11/cloister_0.6.11_darwin_amd64.tar.gz"
      sha256 "a3048a31ca07d29bff81e89dd5ed485581641318bf432588b24f3431a335720e"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
