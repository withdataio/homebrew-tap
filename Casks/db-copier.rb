cask "db-copier" do
  version "3.0.1"
  sha256 "371ffce3128ce5d975c9d9f0c90a904380e360b7ba1d9eed508c9e94860afaa6"

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
