cask "data-file-splitter" do
  version "2.5.2"
  sha256 "8c3d8b2ad0859ceb3c214b7a2f0c2e9a3edc1078934bfed787e14915656ff301"

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
