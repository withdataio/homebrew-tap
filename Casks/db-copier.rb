cask "db-copier" do
  version "3.1.1"
  sha256 "bce8ccef5089d3dacf63da9700cf2b8c6f617cc0b83931b5fe8f4144793e1dc1"

  url "https://www.withdata.com/down/DBCopier-#{version}.pkg"
  name "DBCopier"
  desc "Copy data between databases"
  homepage "https://www.withdata.com/db-copier/"

  livecheck do
    url "https://www.withdata.com/db-copier/download.html"
    regex(/DBCopier version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DBCopier-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBCopier"
end
