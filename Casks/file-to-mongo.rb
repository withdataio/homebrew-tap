cask "file-to-mongo" do
  version "5.1.2"
  sha256 "fff91f15f0338a9bd1a150ae86a7f3d9e3f8b31090bd477fb7f8de71c283d73e"

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
