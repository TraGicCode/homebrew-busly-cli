class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.21/busly-cli-v0.64.21-osx-arm64.tar.gz"
  version "0.64.21"
  sha256 "bfac816b0a0cb51b9762b5cf5214b8305d7d98200dad4272c5c5654662a6e83e"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
