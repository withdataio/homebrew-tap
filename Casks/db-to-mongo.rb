cask "db-to-mongo" do
  version "3.1.1"
  sha256 "052d3e53750d0df0b5455103daa181ebba956ca37b93b7cd38fbccd73ca90421"

  url "https://www.withdata.com/down/DBToMongo-#{version}.pkg"
  name "DBToMongo"
  desc "Convert relational databases data to MongoDB"
  homepage "https://www.withdata.com/db-to-mongo/"

  livecheck do
    url "https://www.withdata.com/db-to-mongo/download.html"
    regex(/DBToMongo version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DBToMongo-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBToMongo"
end
