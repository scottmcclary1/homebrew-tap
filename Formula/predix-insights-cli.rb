class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.13/predix-insights-cli_1.0.13_macOS_64-bit.tar.gz"
  version "1.0.13"
  sha256 "728475023eb01a9f8e404ba73792a59b00254aaa18aacd254e91a08d14cc43a5"

  def install
    bin.install "pi"
  end

  test do
    system "#{bin}/pi --version"
  end
end
