cask "level-data-studio" do
  version "1.7.1"
  sha256 "a4c540a01131246fab6d7af5e2b74e7605f350ea8992d1db1b26f58968fe4f74"

  url "https://www.withdata.com/down/LevelDataStudio-#{version}.pkg"
  name "LevelDataStudio"
  desc "A GUI tool to edit/import/export LevelDB data"
  homepage "https://www.withdata.com/level-data-studio/"

  livecheck do
    url "https://www.withdata.com/level-data-studio/download.html"
    regex(/LevelDataStudio version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "LevelDataStudio-#{version}.pkg"

  uninstall pkgutil: "com.withdata.leveldatastudio"
end
