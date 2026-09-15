cask "subtitle-converter" do
  version "1.0.2"
  sha256 "2999f402626b55f9f39eca684dc54c9986e32d25d1ca775f957f93a381e18860"

  url "https://www.withdata.com/down/SubtitleConverter-#{version}.pkg"
  name "SubtitleConverter"
  desc "Convert subtitle formats"
  homepage "https://www.withdata.com/subtitle-converter/"

  livecheck do
    url "https://www.withdata.com/subtitle-converter/download.html"
    regex(/SubtitleConverter version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "SubtitleConverter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.SubtitleConverter"
end
