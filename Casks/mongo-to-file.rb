cask "mongo-to-file" do
  version "4.8.3"
  sha256 "38c44a6fcd4a513b941a443ff9464c844b0a0fbe27d0034f86143a2416f13184"

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
