require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Vertica < Formula
  homepage "http://my.vertica.com/"
  url "https://dl.dropboxusercontent.com/u/5514085/vertica-client-6.1.0-0.mac.tar.gz"
  sha1 "32a06c0b38e531f464d6e3925f07cbc4944bf7b4"

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
