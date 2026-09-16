cask "db-loader" do
  version "3.6.2"
  sha256 "7f2b9eb5ae45e31ed996bcebbd742d934365d4c55bc2d5e701878adfc7d657ef"

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
