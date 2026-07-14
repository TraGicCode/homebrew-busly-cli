class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.19/busly-cli-v0.64.19-osx-arm64.tar.gz"
  version "0.64.19"
  sha256 "0fcabe7cfe2b1952bf092c61a6288eadc8cdad22c46a63adb77771051694f25a"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
