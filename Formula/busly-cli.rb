class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.31/busly-cli-v0.64.31-osx-arm64.tar.gz"
  version "0.64.31"
  sha256 "c226205659b8f1e3161948c31d194742139458716af3950677c1f15fdf15f9f5"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
