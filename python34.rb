class Python34 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.4.1/Python-3.4.1.tgz"
  version "3.4.1"
  sha256 "8d007e3ef80b128a292be101201e75dec5480e5632e994771e7c231d17720b66"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4m-config"
  end

end
