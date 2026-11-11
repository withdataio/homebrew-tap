cask "db-loader" do
  version "3.7.3"
  sha256 "c2fa7b1377bf21a414319bb7e9dd558967d757790f7ddcd770402ebfa39e7746"

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
