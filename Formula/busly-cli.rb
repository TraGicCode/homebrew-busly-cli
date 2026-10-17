class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.27/busly-cli-v0.64.27-osx-arm64.tar.gz"
  version "0.64.27"
  sha256 "d4301367cd21c2353b898907575501e794a44721650db4819ac49ecf7123cab6"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
