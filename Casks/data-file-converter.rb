cask "data-file-converter" do
  version "6.5.4"
  sha256 "3a54b6f3b5e38a4be116d462d6a788fbd8fa4f511649420187b8b2bfbf073552"

  url "https://www.withdata.com/down/DataFileConverter-#{version}.pkg"
  name "DataFileConverter"
  desc "Convert data files between multiple formats"
  homepage "https://www.withdata.com/data-file-converter/"

  livecheck do
    url "https://www.withdata.com/data-file-converter/download.html"
    regex(/DataFileConverter version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DataFileConverter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DataFileConverter"
end
