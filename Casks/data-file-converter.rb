cask "data-file-converter" do
  version "6.5.2"
  sha256 "5b58dfbf336256d1cdeb30016b31248f918d2c1221223d896b115c4861c04728"

  url "https://www.withdata.com/down/DataFileConverter-#{version}.pkg"
  name "DataFileConverter"
  desc "Convert data files between multiple formats"
  homepage "https://www.withdata.com/data-file-converter/"

  livecheck do
    url "https://www.withdata.com/data-file-converter/download.html"
    regex(/DataFileConverter version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "DataFileConverter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DataFileConverter"
end
