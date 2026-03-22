class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.4.0/cloister_0.4.0_darwin_arm64.tar.gz"
      sha256 "a2cadad0549a5d40f20194aaa583c172f6eda3b4699e9ca9905166d5b1611477"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.4.0/cloister_0.4.0_darwin_amd64.tar.gz"
      sha256 "c26c5c8bd000ddd427986766ad379dc7dfd2fe2b9f7b2daa7c891e53711f93cc"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
