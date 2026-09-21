cask "mongo-to-db" do
  version "3.0.1"
  sha256 "2cc06ccef7a9a3dc03ce121752639c9bb454bb81790c6ac3163876a48b55912f"

  url "https://www.withdata.com/down/MongoToDB-#{version}.pkg"
  name "MongoToDB"
  desc "Convert MongoDB data to relational databases"
  homepage "https://www.withdata.com/mongo-to-db/"

  livecheck do
    url "https://www.withdata.com/mongo-to-db/download.html"
    regex(/MongoToDB version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "MongoToDB-#{version}.pkg"

  uninstall pkgutil: "com.withdata.MongoToDB"
end
