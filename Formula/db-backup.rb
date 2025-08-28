class DbBackup < Formula
  include Language::Python::Virtualenv

  desc "A simple database backup tool"
  homepage "https://github.com/magicstack-llp/db-backup"
  url "https://github.com/magicstack-llp/db-backup/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5d594a909086e62ab6a8fb8c6338b7089e0dc682d50e0323d41538cef711171d"
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
