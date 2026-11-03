cask "db-to-file" do
  version "3.1.1"
  sha256 "8895e7fb69279a205a610227313ecb72007de18e933c84c6370e3a25ab2b06b5"

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
