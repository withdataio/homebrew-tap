cask "db-to-file" do
  version "3.0.2"
  sha256 "f8030af64d6d821d147e50b310006a06db7b994f41e929720418fd72c71cc6a4"

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
