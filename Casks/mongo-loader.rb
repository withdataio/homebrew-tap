cask "mongo-loader" do
  version "2.9.3"
  sha256 "5710d6f20f71d47e69cd2d1f447a0626fd540792ff04ce80ee9b0d339b6b2cb1"

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
