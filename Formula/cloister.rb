class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.5.2/cloister_0.5.2_darwin_arm64.tar.gz"
      sha256 "fe26fc8952857f6a6f460393816f93b3fdb873b8a7481767a8874ee283530074"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.5.2/cloister_0.5.2_darwin_amd64.tar.gz"
      sha256 "465e0303f4fb1c67f033ef73b3f21f934251feffb6e856b1ea8d1fae9fa24e29"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
