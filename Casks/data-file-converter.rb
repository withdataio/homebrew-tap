cask "data-file-converter" do
  version "6.6.4"
  sha256 "f5888313585c1231327596d6f41f2a76190000411119bf83da76dd2a83df3b94"

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
