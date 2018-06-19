class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.20/predix-insights-cli_1.0.20_macOS_64-bit.tar.gz"
  version "1.0.20"
  sha256 "110df130d7ca31896c86ff6a4af8f4f2a87c5c88c5c4cf8f4c6768897808348d"
  
  depends_on "bash-completion"

  def install
    bin.install "pi"
    mkdir_p "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
    cp "scripts/pi_completion.sh", "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
  end

  def caveats; <<~EOS
    Run the following command or open a new terminal tab/window:
      source ~/.bash_profile
  EOS
  end

  test do
    system "#{bin}/pi --version"
  end
end
