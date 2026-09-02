class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.16.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.16.3/cloister_0.16.3_darwin_arm64.tar.gz"
      sha256 "74118f5b018c9756ddc8112945011929011e71a30c35ec2ba555bb1a7d9831cb"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.16.3/cloister_0.16.3_darwin_amd64.tar.gz"
      sha256 "e104b0d977a095f734c932d73e17ab92562f1876c9296d94be625f7fdfb65aef"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
