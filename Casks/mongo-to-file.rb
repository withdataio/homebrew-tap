cask "mongo-to-file" do
  version "4.8.1"
  sha256 "e4b074fcd404081e46e9f6f8851f10cb9ba36380b9d2922dd1a09e4a7d8a1c43"

  url "https://www.withdata.com/down/MongoToFile-#{version}.pkg"
  name "MongoToFile"
  desc "Export MongoDB data to files"
  homepage "https://www.withdata.com/mongo-to-file/"

  livecheck do
    url "https://www.withdata.com/mongo-to-file/download.html"
    regex(/MongoToFile version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "MongoToFile-#{version}.pkg"

  uninstall pkgutil: "com.withdata.MongoToFile"
end
