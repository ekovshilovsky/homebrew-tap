class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.2/op-forward_0.7.2_darwin_arm64.tar.gz"
      sha256 "1ce208d8113fbee80d3a7d80607c169b8631ee585f220f9d0e925716773fd941"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.2/op-forward_0.7.2_darwin_amd64.tar.gz"
      sha256 "32bd119030ba9b7e2aa26b0ecca5674fd70a05e7ef59bdbce3a22ab17cf48ae1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.2/op-forward_0.7.2_linux_arm64.tar.gz"
      sha256 "8ddd956779af57e1e68d02dae565503d8509bb1523d653e7e2e7f7ce720d6ec9"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.7.2/op-forward_0.7.2_linux_amd64.tar.gz"
      sha256 "fb59f0bfede831199e8a5148cf982bb0d215c1ed6c6148e6346ec6c5d1ca6667"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
