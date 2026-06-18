class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.12/busly-cli-v0.64.12-osx-arm64.tar.gz"
  version "0.64.12"
  sha256 "cf9b32da532d398a4d2da44c28fc778e05b4e2c8b600b16323235c4bfec22361"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
