#!/usr/bin/env ruby
#-*-mode: Ruby; coding: utf-8;-*-

require 'formula'

class Entr < Formula
  url 'http://entrproject.org/code/entr-1.9.tar.gz'
  homepage 'https://bitbucket.org/eradman/entr'
  version '1.9'
  sha1 'b339dd1710addac2e69885681e95f19129ec6576'

  def install
    ENV['PREFIX'] = prefix
    ENV['MANPREFIX'] = man
    system "./configure"
    system "make"
    system "make install"
  end
end
