class GoHttp < Formula
  desc "golang replacement for python's SimpleHTTPServer"
  homepage "https://github.com/GokulSrinivas/go-http"
  url "https://github.com/GokulSrinivas/go-http/archive/v1.0.tar.gz"
  sha256 "e8e3c476cfd9a7da9e96a509bb0ce2b9a10b97d5fe5a6843e4f118c8d8509777"
  version "1.0"

  depends_on "go"

  def install

    system "go build go-http.go"

    bin.install "go-http"
  end

  test do
    system "go-http", "-h"
  end
end

