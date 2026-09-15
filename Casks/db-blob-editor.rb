cask "db-blob-editor" do
  version "8.5.1"
  sha256 "5031935bce223fabad126b2c14da6dba3110ff73cdb4da2037a9b7d1ef7067b1"

  url "https://www.withdata.com/down/DBBlobEditor-#{version}.pkg"
  name "DBBlobEditor"
  desc "Edit BLOB data directly in databases"
  homepage "https://www.withdata.com/dbblobeditor/"

  livecheck do
    url "https://www.withdata.com/dbblobeditor/download.html"
    regex(/DBBlobEditor version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "DBBlobEditor-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBBlobEditor"
end
