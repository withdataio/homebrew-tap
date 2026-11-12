cask "big-data-file-viewer" do
  version "1.0.1"
  sha256 "73629e1324b7ac0aa374f7fb6d7792f30addf47d81ffe6643cc10ec3bd36ab47"

  url "https://www.withdata.com/down/BigDataFileViewer-#{version}.pkg"
  name "BigDataFileViewer"
  desc "View big CSV, Excel, JSON and XML files without loading them into memory"
  homepage "https://www.withdata.com/big-data-file-viewer/"

  livecheck do
    url "https://www.withdata.com/big-data-file-viewer/download.html"
    regex(/BigDataFileViewer version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "BigDataFileViewer-#{version}.pkg"

  uninstall pkgutil: "com.withdata.BigDataFileViewer"

  zap trash: "~/.config/BigDataFileViewer"
end
