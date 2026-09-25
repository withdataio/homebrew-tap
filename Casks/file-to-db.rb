cask "file-to-db" do
  version "3.6.2"
  sha256 "e0c1506c7f2cdc4cde36ecca229851d65aea9bc5734fd08825c95a16d87e500a"

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
