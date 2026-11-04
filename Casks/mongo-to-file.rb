cask "mongo-to-file" do
  version "4.9.1"
  sha256 "8be03c23bc3c4e1e0b1e7456ae8bef6270cc426ad36d3da6f80f31163c45fe0c"

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
