cask "text-merger" do
  version "1.1.1"
  sha256 "510e329b861fd5fb18c56111fcee20d0a42b6db68695bc945e1315912ab78ee8"

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
