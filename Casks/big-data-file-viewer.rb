cask "big-data-file-viewer" do
  version "1.0.2"
  sha256 "19da32fbf9699bea54aaa5f400809e55c9f64f408351048c2d83ab397748eab9"

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
