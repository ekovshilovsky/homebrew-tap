class Cloister < Formula
  desc "Isolated VM environments for AI coding agents and multi-account separation"
  homepage "https://github.com/ekovshilovsky/cloister"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.15.0/cloister_0.15.0_darwin_arm64.tar.gz"
      sha256 "4322eaa4939debcfc98539f1c07df76546f7272dd79f7b4163ad89e8295e4d75"
    else
      url "https://github.com/ekovshilovsky/cloister/releases/download/v0.15.0/cloister_0.15.0_darwin_amd64.tar.gz"
      sha256 "97ee1e4ec1f29831f5284ce9de7fa2122ab3bf461ee7813666caf2c551422301"
    end
  end

  def install
    bin.install "cloister"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloister version")
  end
end
