cask "file-to-db" do
  version "3.7.1"
  sha256 "30a13f19c0f1220b6b7352a0200181ee790546029633ee7b95082d88ef9e7b8a"

  url "https://www.withdata.com/down/FileToDB-#{version}.pkg"
  name "FileToDB"
  desc "Import files data to databases"
  homepage "https://www.withdata.com/file-to-db/"

  livecheck do
    url "https://www.withdata.com/file-to-db/download.html"
    regex(/FileToDB version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "FileToDB-#{version}.pkg"

  uninstall pkgutil: "com.withdata.FileToDB"
end
