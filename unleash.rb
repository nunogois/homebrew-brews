class Unleash < Formula
  desc "CLI for interfacing with Unleash: https://www.getunleash.io/"
  homepage "https://github.com/nunogois/unleash-cli"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.7/unleash-macos-x64.tar.gz"
      sha256 "ee61159d98a24aa3695af624997ab16986983c8832ebf59ae547ec1b91d14102"

      def install
        bin.install "unleash"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.7/unleash-macos-arm64.tar.gz"
      sha256 "5d933a0699f27f948855128b468e43105ab32bdcd2d5dee430404efa4fd729a2"

      def install
        bin.install "unleash"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.7/unleash-linux-x64.tar.gz"
      sha256 "ef828af26a33af98da4a77bd79cbc61e75d6a4001a2a03476b6da54724ce0981"

      def install
        bin.install "unleash"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nunogois/unleash-cli/releases/download/v0.0.7/unleash-linux-arm64.tar.gz"
      sha256 "b09320054f9d42d27372df83a391d9ed575cb73c02a84606b2229cb347732c41"

      def install
        bin.install "unleash"
      end
    end
  end
end
