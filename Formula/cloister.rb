class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.5.0/cloister_0.5.0_darwin_arm64.tar.gz"
      sha256 "8bbd5646a8113377943cb93932a236aa3b49466bfba51e70757bee265ac4b76f"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.5.0/cloister_0.5.0_darwin_amd64.tar.gz"
      sha256 "f1557d9d59b65e27f9bf55510cf6174ab92829f2e9eafdd81cab40fff4780084"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
