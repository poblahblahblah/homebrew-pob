class Envconsul < Formula
  desc "envconsul"
  homepage "https://github.com/hashicorp/envconsul"
  url "https://github.com/hashicorp/envconsul/releases/download/v0.6.0/envconsul_0.6.0_darwin_amd64.zip"
  sha256 "e54721e5cd6c64a3e9669cb98196d6a1c8303ea5d30ddb11f13d76877d5c7f79"
  version "0.6.0"

  depends_on "go"

  def install
    bin.install "envconsul"
  end

  test do
    system "envconsul", "--version"
  end
end

