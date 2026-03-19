class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.6.0/op-forward_0.6.0_darwin_arm64.tar.gz"
      sha256 "a409a758da8f54a4b248bc6ad701e28b9649f8b5252ccab1d274e76502db2fd4"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.6.0/op-forward_0.6.0_darwin_amd64.tar.gz"
      sha256 "57d62be79fe93719b526a888f82876156653424a764b30c5c3f03b3a1db3492d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.6.0/op-forward_0.6.0_linux_arm64.tar.gz"
      sha256 "45ab54c893d270cab09b9828b7718e2b5515a0859858cab743edb6484ba2d373"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.6.0/op-forward_0.6.0_linux_amd64.tar.gz"
      sha256 "cb1f24c32c4b219c11b270258db8170f73310dd5ac6838b8ea32830010e8605d"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
