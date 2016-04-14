require "language/go"

class Pair < Formula
  desc "Configures your git author info with one or more people."
  homepage "https://github.com/square/pair"
  url "https://github.com/square/pair/archive/master.zip"
  sha256 "accec6e450396228a81c8e09d2e4d79f32c92b9c981df7c6dfddcf68a4d55d53"
  version "0.0.1"

  depends_on "go" => :build

  def install

    ENV["GOPATH"] = "#{buildpath}/Godeps/_workspace:#{buildpath}"

    Language::Go.stage_deps resources, buildpath/"src"

    system "go get gopkg.in/yaml.v1"
    system "go", "build", "-o", "pair.go"

    bin.install "pair"
  end

  test do
    system "pair", "-h"
  end
end

