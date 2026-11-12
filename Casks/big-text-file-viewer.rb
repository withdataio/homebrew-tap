cask "big-text-file-viewer" do
  version "3.2.2"
  sha256 "5a1d16ff4a37e011ef9b89c93b35667f28cbd4af5d85dedbdcbee9ce8043529e"

  url "https://www.withdata.com/down/BigTextFileViewer-#{version}.pkg"
  name "BigTextFileViewer"
  desc "Viewer for extremely large text files"
  homepage "https://www.withdata.com/big-text-file-viewer/"

  livecheck do
    url "https://www.withdata.com/big-text-file-viewer/download.html"
    regex(/BigTextFileViewer version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "BigTextFileViewer-#{version}.pkg"

  uninstall pkgutil: "com.withdata.BigTextFileViewer"

  zap trash: "~/.config/BigTextFileViewer"
end
