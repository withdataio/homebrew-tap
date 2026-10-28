cask "subtitle-converter" do
  version "1.1.1"
  sha256 "85ec885030402be9f65ef2c20d71e8308d1f89bec7d5c80d35bea906439f4b81"

  url "https://www.withdata.com/down/SubtitleConverter-#{version}.pkg"
  name "SubtitleConverter"
  desc "Convert subtitle formats"
  homepage "https://www.withdata.com/subtitle-converter/"

  livecheck do
    url "https://www.withdata.com/subtitle-converter/download.html"
    regex(/SubtitleConverter version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "SubtitleConverter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.SubtitleConverter"
end
