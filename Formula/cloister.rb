class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.26/cloister_0.6.26_darwin_arm64.tar.gz"
      sha256 "238bbb76e2e989232ad96581df179df955c3d61e1a380e5ca59977acff44c6bd"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.26/cloister_0.6.26_darwin_amd64.tar.gz"
      sha256 "ca916920d9834cd0363092d3a671f90117d5aef1abbdba51922634f702b7d2b5"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
