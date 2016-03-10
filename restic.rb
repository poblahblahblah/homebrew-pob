class Restic < Formula
  desc "restic is a backup program that is fast, efficient and secure."
  homepage "https://github.com/restic/restic"
  url "https://github.com/restic/restic/releases/download/v0.1.0/restic-0.1.0.tar.gz"
  sha256 "df7842cb690a56ce5371013a958d9f324072429897511d4bbfc092d76303f198"
  version "0.1.0"

  depends_on "go"

  def install

    system "go run build.go"

    bin.install "restic"
  end

  test do
    system "restic", "-h"
  end
end

