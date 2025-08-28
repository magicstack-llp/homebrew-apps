class DbBackup < Formula
  include Language::Python::Virtualenv

  desc "A simple database backup tool"
  homepage "https://github.com/magicstack-llp/db-backup"
  url "https://github.com/magicstack-llp/db-backup/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d8b6f802a64df197f4f94d5fc0bf8634bab85deb7f60bdf92b0c10d543d10da2"
  license "MIT"

  depends_on "python@3.11"

  depends_on "mysql-client"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/db-backup", "--help"
  end
end
