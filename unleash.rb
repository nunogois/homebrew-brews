class Unleash < Formula
  desc "CLI for interfacing with Unleash: https://www.getunleash.io/"
  homepage "https://github.com/nunogois/unleash-cli"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.3/unleash-macos-x64.tar.gz"
      sha256 "5c6bc516274d26d6d42b156292fde621fe4d6e71f7174bc78e28e2d3b482f255"

      def install
        bin.install "unleash"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.3/unleash-macos-arm64.tar.gz"
      sha256 "493fb83509f19861c6a2a5c86fc5a16d30357dac4b3f3b669222dc8c77e466fb"

      def install
        bin.install "unleash"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.3/unleash-linux-x64.tar.gz"
      sha256 "d328c278e21b81f9372764ab69715e00327b4c4668edd30334be15507752d5dd"

      def install
        bin.install "unleash"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.3/unleash-linux-arm64.tar.gz"
      sha256 "e9cad268963765ef192bc5496952086c99fb48a7fb5511ded4a5e7c362674615"

      def install
        bin.install "unleash"
      end
    end
  end
end
