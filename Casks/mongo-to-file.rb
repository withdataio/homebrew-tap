cask "mongo-to-file" do
  version "4.8.2"
  sha256 "17efdd3687d4b69eeb25ca7f7394d80b0017d2edf206bfdc3ca7af67e56cabb6"

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
