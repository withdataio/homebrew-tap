cask "excel-data-transformer" do
  version "2.0.2"
  sha256 "052742284d5e4b93b3472ad5085aa8653063f463c37d6f89bdbbfc43e6210cc4"

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
