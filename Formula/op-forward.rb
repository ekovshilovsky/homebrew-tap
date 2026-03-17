class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.2.0/op-forward_0.2.0_darwin_arm64.tar.gz"
      sha256 "3c617d9fa86dc0930c7fe9d91e4270de601ec1412e1994ef21b7888844344605"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.2.0/op-forward_0.2.0_darwin_amd64.tar.gz"
      sha256 "394f91867ff4aa69cd18cd4d4ea89283e504624aac032483f39eee1afe1bc379"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.2.0/op-forward_0.2.0_linux_arm64.tar.gz"
      sha256 "da338706eeae4a51583c78d63dcedc73de11fea3a88a8fa36be6843753a07a83"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.2.0/op-forward_0.2.0_linux_amd64.tar.gz"
      sha256 "49afad0632533d12cf9b35bb03e455adffca39e24fb3baab89005b635f75da97"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
