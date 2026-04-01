class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.5/cloister_0.6.5_darwin_arm64.tar.gz"
      sha256 "d753077338720df9143f688b809d0f6a4e07c96dfb78053ff885fb13083f31ce"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.5/cloister_0.6.5_darwin_amd64.tar.gz"
      sha256 "17eec4423ae2ddc43557f0752116af6889f138b9cdbb87b386c0e0349b39b677"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
