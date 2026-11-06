cask "redis-data-studio" do
  version "3.0.1"
  sha256 "ba7ff5855237e521ec7f43b3c272863209938aca3c565d81d05226b5556c4012"

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

  # The 2.x Lazarus build used com.withdata.RedisDataStudio; the 3.x Go build
  # uses com.withdata.redisdatastudio. Remove both receipts.
  uninstall pkgutil: ["com.withdata.RedisDataStudio", "com.withdata.redisdatastudio"]
end
