cask "db-loader" do
  version "3.6.1"
  sha256 "8c463682f9474e594a9faa5760da055d5ec4274048fc353c99ad633784970266"

  url "https://www.withdata.com/down/DBLoader-#{version}.pkg"
  name "DBLoader"
  desc "Import and export database data to and from flat files and Excel"
  homepage "https://www.withdata.com/db-loader/"

  livecheck do
    url "https://www.withdata.com/db-loader/download.html"
    regex(/DBLoader version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DBLoader-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBLoader"
end
