class Fast < Formula
  desc "golang tool to measure download speed"
  homepage "https://github.com/ddo/fast"
  url "https://github.com/ddo/fast/releases/download/v0.0.1/fast_darwin_amd64"
  sha256 "c3c195389a202cc023e46b11303dfda6c6254853948f4d56d5f20fa09b3dff61"
  version "0.0.1"

  depends_on "go"

  def install
    system "go build fast.go"

    bin.install "fast"
  end

  test do
    system "fast"
  end
end

