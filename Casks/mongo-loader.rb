cask "mongo-loader" do
  version "2.9.1"
  sha256 "6878e1b6579b2f595d7e95b5de0ff783ff73523c4706989454f93fba34dd2478"

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
