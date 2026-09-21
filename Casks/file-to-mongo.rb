cask "file-to-mongo" do
  version "5.1.1"
  sha256 "c305f06a3b1f5da9a8f331da93bf54dcc20a8651d5b8ed5117da6a83cf4d142b"

  url "https://www.withdata.com/down/FileToMongo-#{version}.pkg"
  name "FileToMongo"
  desc "Import data from files to MongoDB"
  homepage "https://www.withdata.com/file-to-mongo/"

  livecheck do
    url "https://www.withdata.com/file-to-mongo/download.html"
    regex(/FileToMongo version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "FileToMongo-#{version}.pkg"

  uninstall pkgutil: "com.withdata.FileToMongo"
end
