cask "big-text-file-viewer" do
  version "3.1.2"
  sha256 "1873bdc6b04c735fbbce14e210402fdc4b23effeb447ca203eb23029134a5e50"

  url "https://www.withdata.com/down/BigTextFileViewer-#{version}.pkg"
  name "BigTextFileViewer"
  desc "Viewer for extremely large text files"
  homepage "https://www.withdata.com/big-text-file-viewer/"

  livecheck do
    url "https://www.withdata.com/big-text-file-viewer/download.html"
    regex(/BigTextFileViewer version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "BigTextFileViewer-#{version}.pkg"

  uninstall pkgutil: "com.withdata.BigTextFileViewer"

  zap trash: "~/.config/BigTextFileViewer"
end
