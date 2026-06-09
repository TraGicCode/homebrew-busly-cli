class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.10/busly-cli-v0.64.10-osx-arm64.tar.gz"
  version "0.64.10"
  sha256 "0bb192e11a873f996bac754703052238fef337dd9dd8aa0c442d9216bccc5d19"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
