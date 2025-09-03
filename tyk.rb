class Tyk < Formula
  desc "Command-line interface for managing Tyk APIs and configurations"
  homepage "https://github.com/sedkis/tyk-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sedkis/tyk-cli/releases/download/v0.1.0/tyk-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "2710672ade0b5706c1502bb1c1e834779db551be2df2d3a038918b3cb024dc59"

      def install
        bin.install "tyk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sedkis/tyk-cli/releases/download/v0.1.0/tyk-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "1447e74bf1b95e1899acd2abe1da7fcc82baa612ab12c7d13259a3135cf0d484"

      def install
        bin.install "tyk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sedkis/tyk-cli/releases/download/v0.1.0/tyk-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "9656dd4e2f0e11af0622fa3a90dc9a7597affb156eff0752e83dffd68009fc0e"

      def install
        bin.install "tyk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sedkis/tyk-cli/releases/download/v0.1.0/tyk-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "e7972bb0eb45bea072f9ae5a1572a56f4346dd628f3cf97c52f49fe0c77986c5"

      def install
        bin.install "tyk"
      end
    end
  end

  test do
    system "#{bin}/tyk", "--version"
  end
end