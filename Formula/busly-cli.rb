class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.4/busly-cli-v0.64.4-osx-arm64.tar.gz"
  version "0.64.4"
  sha256 "d00c3a18d96aea712f03893e709226903cd6e424b4315fa21f1a9042f1cef6da"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
