cask "text-merger" do
  version "1.0.2"
  sha256 "3f7f7d192e64cf83cd78ec4a46f2df85aeb039da61f281245bf8d138c2d337b2"

  url "https://www.withdata.com/down/TextMerger-#{version}.pkg"
  name "TextMerger"
  desc "Merge text files"
  homepage "https://www.withdata.com/text-merger/"

  livecheck do
    url "https://www.withdata.com/text-merger/download.html"
    regex(/TextMerger version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "TextMerger-#{version}.pkg"

  uninstall pkgutil: "com.withdata.TextMerger"
end
