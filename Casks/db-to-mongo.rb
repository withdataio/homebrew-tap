cask "db-to-mongo" do
  version "3.0.1"
  sha256 "eae173a5bd59277fd9eaeec24cf38259f370ccefc929d3626934f74bdac12d9a"

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
