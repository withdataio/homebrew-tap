cask "batch-image-converter" do
  version "2.3.1"
  sha256 "39d3b7243e56440c13bbbc137adfae07b946137abac87778bb0bbd2e0a0dd99d"

  url "https://www.withdata.com/down/BatchImageConverter-#{version}.pkg"
  name "BatchImageConverter"
  desc "Batch image converter: change format, resize, compress"
  homepage "https://www.withdata.com/batch-image-converter/"

  livecheck do
    url "https://www.withdata.com/batch-image-converter/download.html"
    regex(/BatchImageConverter version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "BatchImageConverter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.batchimageconverter"
end
