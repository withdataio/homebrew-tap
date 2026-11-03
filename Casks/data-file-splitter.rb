cask "data-file-splitter" do
  version "2.6.2"
  sha256 "0a3058bd436b2eee97d4373f55440e2ccedd554cb34e64fa15269ec58b033fe1"

  url "https://www.withdata.com/down/DataFileSplitter-#{version}.pkg"
  name "DataFileSplitter"
  desc "Split big data files into smaller files"
  homepage "https://www.withdata.com/data-file-splitter/"

  livecheck do
    url "https://www.withdata.com/data-file-splitter/download.html"
    regex(/DataFileSplitter version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DataFileSplitter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DataFileSplitter"
end
