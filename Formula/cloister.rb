class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.2/cloister_0.7.2_darwin_arm64.tar.gz"
      sha256 "87db0adae99f993b538c34d1c62925c4a0923136eec4a8dad2c3b93e721a6719"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.7.2/cloister_0.7.2_darwin_amd64.tar.gz"
      sha256 "9c18d650400b385b7939205d02fd864fbe719b6af32b42e93620d71cc91fa875"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
