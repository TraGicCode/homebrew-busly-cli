class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.17/busly-cli-v0.64.17-osx-arm64.tar.gz"
  version "0.64.17"
  sha256 "774b383d69d065cbc315b7cf97b74846ca5ad61499f0734bbb0dabdff3b640e2"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
