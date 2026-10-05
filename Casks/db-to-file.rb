cask "db-to-file" do
  version "3.0.3"
  sha256 "77d59c3c542deadd5a335ed69fe993c187895045d8ca6e4e3e787e00e6895f04"

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
