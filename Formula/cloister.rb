class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.19.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.9/cloister_0.19.9_darwin_arm64.tar.gz"
      sha256 "d5fea4fc91c3e5b33123f828cb6ea3d538cd01db89bb8dc81bcaad937a4a6559"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.19.9/cloister_0.19.9_darwin_amd64.tar.gz"
      sha256 "7f87e3b8bf69f9f2232d4bb98213bff01863881530ac44ac02ca7232f1f083a0"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
