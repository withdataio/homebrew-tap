cask "mongo-loader" do
  version "3.0.1"
  sha256 "559249c70b5227308ee6b240ec89753537bd0bd3c7676a731470347b15e4a3a6"

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
