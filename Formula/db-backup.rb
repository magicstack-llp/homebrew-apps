class DbBackup < Formula
  include Language::Python::Virtualenv

  desc "A simple database backup tool"
  homepage "https://github.com/magicstack-llp/db-backup"
  url "https://github.com/magicstack-llp/db-backup/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "50627e750b0ef1ce7aafecce562364f5bad49719a56728e03321bb4a4ae1ae18"
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
