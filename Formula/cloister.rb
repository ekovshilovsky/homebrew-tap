class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.0.2/cloister_0.0.2_darwin_arm64.tar.gz"
      sha256 "0984b9d8d30493b7ed55c83072e8fb36490b018e36904dcddb1853607e076547"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.0.2/cloister_0.0.2_darwin_amd64.tar.gz"
      sha256 "eaa34d83becee77d4fa7e18c5b4746ab409185477479d2c23904f04879dfc5c2"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
