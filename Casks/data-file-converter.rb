cask "data-file-converter" do
  version "6.5.3"
  sha256 "6328016d935f77bb3c414caf89b16a7bd0474147aad89c3660ac0d0cbac9aa2d"

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
