cask "mongo-loader" do
  version "2.8.1"
  sha256 "0e9572574d459753aba77a1391f836e0dd0cb91180e8ca34166f81fdc0c80c0e"

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
