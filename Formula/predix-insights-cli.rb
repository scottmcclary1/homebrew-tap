class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.19/predix-insights-cli_1.0.19_macOS_64-bit.tar.gz"
  version "1.0.19"
  sha256 "af244cc5519b8305665eb84902f6e99ef0f0796046e3f0086ad5e8b481864026"
  
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
