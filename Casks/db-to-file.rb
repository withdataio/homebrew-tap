cask "db-to-file" do
  version "3.1.2"
  sha256 "acebefeb2978ef78f7ddea269cc35803a9de22837d19f5083519da180defe706"

  url "https://www.withdata.com/down/DBToFile-#{version}.pkg"
  name "DBToFile"
  desc "Export data from databases to files"
  homepage "https://www.withdata.com/db-to-file/"

  livecheck do
    url "https://www.withdata.com/db-to-file/download.html"
    regex(/DBToFile version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DBToFile-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBToFile"
end
