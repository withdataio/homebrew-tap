cask "excel-data-transformer" do
  version "2.1.1"
  sha256 "d09ac7359799b218ea9f1e82314424044794eb4f89b0aa52704d32a6df7ae4d9"

  url "https://www.withdata.com/down/ExcelDataTransformer-#{version}.pkg"
  name "ExcelDataTransformer"
  desc "Transform Excel data"
  homepage "https://www.withdata.com/excel-data-transformer/"

  livecheck do
    url "https://www.withdata.com/excel-data-transformer/download.html"
    regex(/ExcelDataTransformer version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "ExcelDataTransformer-#{version}.pkg"

  uninstall pkgutil: "com.withdata.ExcelDataTransformer"
end
