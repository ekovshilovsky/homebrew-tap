class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.1/op-forward_0.4.1_darwin_arm64.tar.gz"
      sha256 "2179c6c4d639dd0f00948f9baf8871c63ecdb62753fc1781eba5052b8d857596"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.1/op-forward_0.4.1_darwin_amd64.tar.gz"
      sha256 "8a92c129fa26313846c353555edd31b1d07ab49a7100d825a6d6c24963e14847"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.1/op-forward_0.4.1_linux_arm64.tar.gz"
      sha256 "372e61934a96548298317adaa24bf13d4dfbf2c4e7f1c3e9bc40ce28a565c406"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v0.4.1/op-forward_0.4.1_linux_amd64.tar.gz"
      sha256 "dac1d43bb7dd267de92ffb5e3fb5c37f4e8b7a522c5f2365d193a07999e9ed7a"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
