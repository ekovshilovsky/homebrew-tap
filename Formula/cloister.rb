class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.6.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.21/cloister_0.6.21_darwin_arm64.tar.gz"
      sha256 "307d5fa0fe647c98777977e8f8198c47dd4e4b1aa8d1ef06bbd6e033fc5db8b7"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.6.21/cloister_0.6.21_darwin_amd64.tar.gz"
      sha256 "11c4cc0668617dd86b57ec9e92c847eac90360241e3a1d90bbdddd6a289a4564"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
