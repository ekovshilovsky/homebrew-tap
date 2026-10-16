class OpForward < Formula
  desc "Forward 1Password CLI across SSH boundaries with biometric auth"
  homepage "https://github.com/ekovshilovsky/op-forward"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.0/op-forward_1.0.0_darwin_arm64.tar.gz"
      sha256 "d55a8b401e70bf3defc0eff589746056a98a561e2402a2ab9be5880a20ff48c0"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.0/op-forward_1.0.0_darwin_amd64.tar.gz"
      sha256 "32e5d208e7f73aa6b704fb5f49a904dea313ca04deb74c7f32eb847ec6dcc198"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.0/op-forward_1.0.0_linux_arm64.tar.gz"
      sha256 "ba211e17cb20d065fa263a7732d0533fe8b96e0da2b48e8acc1d746a2791af23"
    else
      url "https://github.com/ekovshilovsky/op-forward/releases/download/v1.0.0/op-forward_1.0.0_linux_amd64.tar.gz"
      sha256 "710e8fbdaaeba7469a94b982a5c839aea6d1ac1c6a83eab1b7e63c1d9ba001af"
    end
  end

  def install
    bin.install "op-forward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-forward version")
  end
end
