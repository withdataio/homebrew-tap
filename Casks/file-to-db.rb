cask "file-to-db" do
  version "3.7.3"
  sha256 "9feabf601531c438812747c47207d1235faea7b2cb665d1cc06ee6d8e3508dc3"

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
