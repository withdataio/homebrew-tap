cask "db-to-mongo" do
  version "2.9.1"
  sha256 "53a820c26711bc94a79608e243be2f98dcb045b0761cbb2484c2162f12baa76f"

  url "https://www.withdata.com/down/DBToMongo-#{version}.pkg"
  name "DBToMongo"
  desc "Convert relational databases data to MongoDB"
  homepage "https://www.withdata.com/db-to-mongo/"

  livecheck do
    url "https://www.withdata.com/db-to-mongo/download.html"
    regex(/DBToMongo version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "DBToMongo-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBToMongo"
end
