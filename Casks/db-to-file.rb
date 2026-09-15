cask "db-to-file" do
  version "3.0.1"
  sha256 "d112ff8d1ba407f9d4a2e26d69ab9966f59d285e5bd7b440330792967af05b14"

  url "https://www.withdata.com/down/DBToFile-#{version}.pkg"
  name "DBToFile"
  desc "Export data from databases to files"
  homepage "https://www.withdata.com/db-to-file/"

  livecheck do
    url "https://www.withdata.com/db-to-file/download.html"
    regex(/DBToFile version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "DBToFile-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBToFile"
end
