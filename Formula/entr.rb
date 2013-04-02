require 'formula'

class Entr < Formula
  url 'http://entrproject.org/code/entr-1.8.tar.gz'
  homepage 'https://bitbucket.org/eradman/entr'
  version '1.8'
  sha1 '63190deb363fb8de91c862b17a88b77c88171017'

  def install
    ENV['PREFIX'] = prefix
    ENV['MANPREFIX'] = man
    inreplace "Makefile" do |s|
      s.gsub! "${PREFIX}/man", "${PREFIX}/share/man"
    end
    system "make"
    system "make install"
  end
end
