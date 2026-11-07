cask "file-to-db" do
  version "3.7.2"
  sha256 "881ed73196d10d9bb49e071a0fd5c1e794ee47e2c75520affe3e43b90bf7962e"

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
