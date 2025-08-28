class DbBackup < Formula
  include Language::Python::Virtualenv

  desc "A simple database backup tool"
  homepage "https://github.com/magicstack-llp/db-backup"
  url "https://github.com/magicstack-llp/db-backup/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "50627e750b0ef1ce7aafecce562364f5bad49719a56728e03321bb4a4ae1ae18"
  license "MIT"

  depends_on "python@3.11"

  depends_on "mysql-client"

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.2.1.tar.gz"
    sha256 "27c491cc05d968d271d5a1db13e3b5a184636d9d930f148c50b038f0d0646202"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/source/b/boto3/boto3-1.40.19.tar.gz"
    sha256 "772f259fdef6efa752c5744e140c0371593a20a0c728cce91d67b8b58d1090e7"
  end

  resource "mysql-connector-python" do
    url "https://files.pythonhosted.org/packages/source/m/mysql_connector_python/mysql_connector_python-9.4.0.tar.gz"
    sha256 "d111360332ae78933daf3d48ff497b70739aa292ab0017791a33e826234e743b"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/source/p/python_dotenv/python_dotenv-1.1.1.tar.gz"
    sha256 "a8a6399716257f45be6a007360200409fce5cda2661e3dec71d23dc15f6189ab"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/db-backup", "--help"
  end
end
