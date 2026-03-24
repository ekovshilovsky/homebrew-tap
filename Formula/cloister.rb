class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.4.0/cloister_0.4.0_darwin_arm64.tar.gz"
      sha256 "a17e9ddb78025ad9830f8f29b7f1b8487bd7d248f69edd4a0e82cc4b0a782cd7"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.4.0/cloister_0.4.0_darwin_amd64.tar.gz"
      sha256 "016a15920c11a9ee3808391598bc3f38404058e37d5dabe83e2f84c718defa87"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
