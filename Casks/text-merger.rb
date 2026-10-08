cask "text-merger" do
  version "1.1.1"
  sha256 "258d157b1f2cf6cb4eb1172d6b57e819bbc91052bf476a6d06f7a0e7a2baabb3"

  url "https://www.withdata.com/down/TextMerger-#{version}.pkg"
  name "TextMerger"
  desc "Merge text files"
  homepage "https://www.withdata.com/text-merger/"

  livecheck do
    url "https://www.withdata.com/text-merger/download.html"
    regex(/TextMerger version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "TextMerger-#{version}.pkg"

  uninstall pkgutil: "com.withdata.TextMerger"
end
