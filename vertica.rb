# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Vertica < Formula
  homepage "http://my.vertica.com/"
  url "https://storage.googleapis.com/homebrew-rafe/vertica-client-7.1.1-0.mac.64.tar.gz"
  version "7.1.1"
  sha256 "0d2982f7e65c72f54572bf0f15fc25937384eb6588a8097406e00e796d0a6e58"

  # depends_on "cmake" => :build
  # depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    bin.install 'vertica/bin/vsql'
    lib.install Dir['vertica/lib/*']
  end

  test do
    system "#{bin}/vsql"
  end
end
