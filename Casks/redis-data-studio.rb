cask "redis-data-studio" do
  version "2.0.1"
  sha256 "f7b33e581b184b25801552e7757bab3cd172a9adaf70b3d11026b89d8c227463"

  url "https://www.withdata.com/down/RedisDataStudio-#{version}.pkg"
  name "RedisDataStudio"
  desc "Edit, import, and export Redis data"
  homepage "https://www.withdata.com/redis-data-studio/"

  livecheck do
    url "https://www.withdata.com/redis-data-studio/download.html"
    regex(/RedisDataStudio version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "RedisDataStudio-#{version}.pkg"

  uninstall pkgutil: "com.withdata.RedisDataStudio"
end
