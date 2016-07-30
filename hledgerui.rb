require "language/haskell"

class Hledgerui < Formula
  include Language::Haskell::Cabal

  desc "The hledger accounting tool, curses version"
  homepage "http://hledger.org"
  url "http://hackage.haskell.org/package/hledger-ui-0.27.5/hledger-ui-0.27.5.tar.gz"
  #sha256 "0aecdf586a46c24d6d67659157d1edbfc0d78afb50ea7cfbec1a01bf86b792b0"

  # head "https://github.com/simonmichael/hledger.git"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build
  depends_on "hledger"

  def install
    install_cabal_package :using => ["happy"]
  end

  test do
    system "#{bin}/hledger-ui", "test"
  end
end
