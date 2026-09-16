cask "db-copier" do
  version "3.0.2"
  sha256 "798b5ae81074552ada28429f6de9c3800e436198e871e80b25b2327f5fdbc283"

  url "https://www.withdata.com/down/DBCopier-#{version}.pkg"
  name "DBCopier"
  desc "Copy data between databases"
  homepage "https://www.withdata.com/db-copier/"

  livecheck do
    url "https://www.withdata.com/db-copier/download.html"
    regex(/DBCopier version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DBCopier-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DBCopier"
end
