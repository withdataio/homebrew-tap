cask "db-blob-editor" do
  version "8.6.1"
  sha256 "a7f4ec287c73395b55567d73305565ad869a8db6d079af0e937774c93948ad87"

  url "https://www.withdata.com/down/DBBlobEditor-#{version}.pkg"
  name "DBBlobEditor"
  desc "Edit BLOB data directly in databases"
  homepage "https://www.withdata.com/dbblobeditor/"

  livecheck do
    url "https://www.withdata.com/dbblobeditor/download.html"
    regex(/DBBlobEditor version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DBBlobEditor-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBBlobEditor"
end
