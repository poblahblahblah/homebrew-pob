class Sent < Formula
  desc "Simple plaintext presentation tool."
  homepage "http://tools.suckless.org/sent/"
  url "http://dl.suckless.org/tools/sent-0.2.tar.gz"
  sha256 "53b961f9d92a277a6408df7025b4a6deae6b655a797383c93442290e45391076"

  depends_on "x11"
  depends_on "freetype"

  def install
    patch do
      patch :DATA
    end

    system "make"

    bin.install "sent"
  end

  test do
    system "echo", "great success", "#{bin}/sent", "-"
  end
end

__END__
diff --git a/config.mk b/config.mk
index 52d5fb1..e800ce0 100644
--- a/config.mk
+++ b/config.mk
@@ -11,7 +11,7 @@ X11INC = /usr/X11R6/include
 X11LIB = /usr/X11R6/lib

 # includes and libs
-INCS = -I. -I/usr/include -I/usr/include/freetype2 -I${X11INC}
+INCS = -I. -I/usr/include -I/usr/local/include/freetype2 -I${X11INC}
 LIBS = -L/usr/lib -lc -lm -L${X11LIB} -lXft -lfontconfig -lX11

 # flags

