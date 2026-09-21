cask "file-to-mongo" do
  version "5.1.2"
  sha256 "ddc477d4b623aafe5341c848a5674c566c67e196d518e889d7606cb0225f4ae7"

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
