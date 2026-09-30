cask "bill-sight" do
  version "1.0.1"
  sha256 "e25b2689e3484c1fcdb9d7185e2189980c2119e5f8a7273b253f04b516f1ecb7"

  url "https://www.withdata.com/down/BillSight-#{version}.pkg"
  name "BillSight"
  desc "Extract invoice data from PDF and e-invoice XML"
  homepage "https://www.withdata.com/bill-sight/"

  pkg "BillSight-#{version}.pkg"

  uninstall pkgutil: "com.withdata.BillSight"
end
