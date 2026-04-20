class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.57.0/busly-cli-v0.57.0-osx-arm64.tar.gz"
  version "0.57.0"
  sha256 "c6a669fe277b085ca22373796a7727d2e5e204f3016ee6e76074a6c86a807e6d"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
