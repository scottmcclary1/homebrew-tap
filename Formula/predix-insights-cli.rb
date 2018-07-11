class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.21/predix-insights-cli_1.0.21_macOS_64-bit.tar.gz"
  version "1.0.21"
  sha256 "67dbf3d0f5580e030d40302cc4fde7e5e04397d755c4ffb4a9793a632691aa90"
  
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
