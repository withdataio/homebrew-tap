cask "level-data-studio" do
  version "1.6.2"
  sha256 "1dd32738789c87b0e5a771c514b1a374920d4a4974730d3e460e473efc6a74a0"

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
