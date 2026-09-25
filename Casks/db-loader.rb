cask "db-loader" do
  version "3.6.4"
  sha256 "41bf88fc8139c187ac84f475a58f307e57acf7c944d763a6ed7b12327faee398"

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
