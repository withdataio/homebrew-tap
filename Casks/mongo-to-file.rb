cask "mongo-to-file" do
  version "4.7.1"
  sha256 "7731ae5e33dfd93090820cdd8c13e52bdf1ad6eba87f9cc09faae67dc9ffb9f5"

  url "https://www.withdata.com/down/MongoToFile-#{version}.pkg"
  name "MongoToFile"
  desc "Export MongoDB data to files"
  homepage "https://www.withdata.com/mongo-to-file/"

  livecheck do
    url "https://www.withdata.com/mongo-to-file/download.html"
    regex(/MongoToFile version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "MongoToFile-#{version}.pkg"

  uninstall pkgutil: "com.withdata.MongoToFile"
end
