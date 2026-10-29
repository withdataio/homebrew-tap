cask "data-file-converter" do
  version "6.6.1"
  sha256 "f5a2498b4dac2b48b84dafb367ed8fea3371872fd8771af5f34a12a12d58690a"

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
