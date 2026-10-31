cask "level-data-studio" do
  version "1.6.2"
  sha256 "86278461b253c5aad1a05ad28232668629192f2f58368fddbe8129a8727b1fd8"

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
