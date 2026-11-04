cask "file-to-mongo" do
  version "5.2.1"
  sha256 "189429426ffb2fb95d691d080400e571d6d9aa1d07febff476c4e8b46026111d"

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
