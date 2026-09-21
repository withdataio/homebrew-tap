cask "db-loader" do
  version "3.6.3"
  sha256 "7d027ebd854af272ea1c210b7078e7517fe7b63d204f50bb7d4af1ff00693267"

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
