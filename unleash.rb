class Unleash < Formula
  desc "CLI for interfacing with Unleash: https://www.getunleash.io/"
  homepage "https://github.com/nunogois/unleash-cli"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.6/unleash-macos-x64.tar.gz"
      sha256 "f401e52333975725e1473aa9fd7a99137beced09907debdd945b73a8d7fe9fb2"

      def install
        bin.install "unleash"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.6/unleash-macos-arm64.tar.gz"
      sha256 "dee8cfb4f52d49387b62e3f00cc80311d7ed4f764768bfc4c1475504158fa3a1"

      def install
        bin.install "unleash"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.6/unleash-linux-x64.tar.gz"
      sha256 "14477e2bbbc46b03b38fe09086265eade712ea7e105f511ab95069fd23f00bf2"

      def install
        bin.install "unleash"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.6/unleash-linux-arm64.tar.gz"
      sha256 "3bd58e8141f42d8ee005d45a309b5dda7b245b8d3b91e049c186fdbf593eee38"

      def install
        bin.install "unleash"
      end
    end
  end
end
