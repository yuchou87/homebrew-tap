class Tokenpulse < Formula
  desc "Keep your Mac awake and show Claude Code usage on an ESP32-S3 desk gadget"
  homepage "https://github.com/yuchou87/tokenpulse"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/yuchou87/tokenpulse/releases/download/v0.2.0/tokenpulse_darwin_arm64.tar.gz"
      sha256 "419791326eadcb96e31f5971db8e23529b6328d8f79c8e9b00f82e6643ab5f13"
    end
    on_intel do
      url "https://github.com/yuchou87/tokenpulse/releases/download/v0.2.0/tokenpulse_darwin_amd64.tar.gz"
      sha256 "b4b1c8ea783f00d052ca056abdbdfcbd5e839f7f8b9e75fb2a9f3efc00e7b7ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuchou87/tokenpulse/releases/download/v0.2.0/tokenpulse_linux_arm64.tar.gz"
      sha256 "295120d884e41cc510bafab6a45a6646833ed35d033fe7b91e499223366a2244"
    end
    on_intel do
      url "https://github.com/yuchou87/tokenpulse/releases/download/v0.2.0/tokenpulse_linux_amd64.tar.gz"
      sha256 "efce81ddfd504480f4d23a516afd4cd6a85c8d4535c3642c3f4543821b0bad39"
    end
  end

  def install
    bin.install "tokenpulse"
  end

  test do
    assert_match "tokenpulse", shell_output("#{bin}/tokenpulse version")
  end
end
