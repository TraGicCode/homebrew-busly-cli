class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.58.0/busly-cli-v0.58.0-osx-arm64.tar.gz"
  version "0.58.0"
  sha256 "09d0a3aeebaaf070234499adaed9c52f2e13d575ae1b3108e5260b91c804f75a"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
