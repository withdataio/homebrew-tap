cask "file-to-mongo" do
  version "5.0.1"
  sha256 "79e98d96e43318ca70378b00c3f0b421be150e7049997ade9828bb70c9ea8c21"

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
