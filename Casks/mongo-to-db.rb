cask "mongo-to-db" do
  version "3.1.1"
  sha256 "b0c1ec79ba32d0ded130a2e6289773c236ebbe9ce2cc13599d040e2e4e7e2f2f"

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
