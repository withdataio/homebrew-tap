cask "redis-data-studio" do
  version "2.1.1"
  sha256 "2376d6020d2b8c5663b324bc52140c63c01d9614f766b0cf05c9399b642ebed2"

  url "https://www.withdata.com/down/RedisDataStudio-#{version}.pkg"
  name "RedisDataStudio"
  desc "Edit, import, and export Redis data"
  homepage "https://www.withdata.com/redis-data-studio/"

  livecheck do
    url "https://www.withdata.com/redis-data-studio/download.html"
    regex(/RedisDataStudio version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "RedisDataStudio-#{version}.pkg"

  uninstall pkgutil: "com.withdata.RedisDataStudio"
end
