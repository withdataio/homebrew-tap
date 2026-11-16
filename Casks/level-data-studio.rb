cask "level-data-studio" do
  version "1.7.1"
  sha256 "97322c50e5a61d303f28c96c7a606a73bbccd7cb142feb87f2690ac3d279813c"

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
