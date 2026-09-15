cask "mongo-to-db" do
  version "2.9.1"
  sha256 "3d6cc2bffcb8b7c7bb598c724b27926571bc60601ed1752e743bbe0ae75b06e2"

  url "https://www.withdata.com/down/MongoToDB-#{version}.pkg"
  name "MongoToDB"
  desc "Convert MongoDB data to relational databases"
  homepage "https://www.withdata.com/mongo-to-db/"

  livecheck do
    url "https://www.withdata.com/mongo-to-db/download.html"
    regex(/MongoToDB version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "MongoToDB-#{version}.pkg"

  uninstall pkgutil: "com.withdata.MongoToDB"
end
