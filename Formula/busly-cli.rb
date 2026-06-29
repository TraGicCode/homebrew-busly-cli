class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.15/busly-cli-v0.64.15-osx-arm64.tar.gz"
  version "0.64.15"
  sha256 "1862e53c6a59081ef98ebf2ade004591a84189539f83ae2f0e39ee719860c866"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
