cask "mongo-loader" do
  version "2.9.2"
  sha256 "7c1023abd6e9cd7ff885252787e17c061767a9ffb457e74a42def409250551b5"

  url "https://www.withdata.com/down/MongoLoader-#{version}.pkg"
  name "MongoLoader"
  desc "Import and export MongoDB data to and from flat files and Excel"
  homepage "https://www.withdata.com/mongo-loader/"

  livecheck do
    url "https://www.withdata.com/mongo-loader/download.html"
    regex(/MongoLoader version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "MongoLoader-#{version}.pkg"

  uninstall pkgutil: "com.withdata.MongoLoader"
end
