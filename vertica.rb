# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Vertica < Formula
  homepage "http://my.vertica.com/"
  url "https://storage.googleapis.com/homebrew-rafe/vsql-9.0.0-1.tar.gz"
  version "9.0.0"
  sha256 "2c9925dd37884c3a48651531bd5cfdb4941e028270dd7f790cade53069cc6b7d"

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
