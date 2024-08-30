class Unleash < Formula
  desc "CLI for interfacing with Unleash: https://www.getunleash.io/"
  homepage "https://github.com/nunogois/unleash-cli"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.5/unleash-macos-x64.tar.gz"
      sha256 "79deee3447d53ca7c841cce8087c6204f65dbcd694937bd93b77e70a7e0294bd"

      def install
        bin.install "unleash"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.5/unleash-macos-arm64.tar.gz"
      sha256 "8cde0180ecd7ed39aed6a5fd2fb417ff7d647708bd4ddd80844226262bcc56c1"

      def install
        bin.install "unleash"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.5/unleash-linux-x64.tar.gz"
      sha256 "0991c730084a3136e8e401e55a19e31cd054a04b219bda90e346e5e262e266e0"

      def install
        bin.install "unleash"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.5/unleash-linux-arm64.tar.gz"
      sha256 "d8206b1c8bf4f603baff9f85dd8b601dbafc18a5b7f9e5bd2cd2cc5cf4e49991"

      def install
        bin.install "unleash"
      end
    end
  end
end
