class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.13.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.13.2/cloister_0.13.2_darwin_arm64.tar.gz"
      sha256 "b9e2efd1fb9277f7a690c01d333069f794622a22728e785a55150ed5007aaac4"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.13.2/cloister_0.13.2_darwin_amd64.tar.gz"
      sha256 "9ed0382415f018b4ccb4360f7c971189ebc76c31cfc1649a09648e4dc143b267"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
