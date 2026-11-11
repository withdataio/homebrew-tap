cask "db-copier" do
  version "3.1.2"
  sha256 "98c7b3dd88c7421f9542ee689e87865112dc0c285c5fd885d865f8a4f812e0c4"

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
