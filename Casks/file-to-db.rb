cask "file-to-db" do
  version "3.6.1"
  sha256 "95d44e49fb65f7ccdf5a21c86e676e93ed52225b9ea621d639393907c1dc573e"

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
