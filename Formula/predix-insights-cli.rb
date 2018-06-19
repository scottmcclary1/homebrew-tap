class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.18/predix-insights-cli_1.0.18_macOS_64-bit.tar.gz"
  version "1.0.18"
  sha256 "c4081e7168fb4e7c3117389c9160e05b260e0f17a66dc774af462e2643b234af"
  
  depends_on "bash-completion"

  def install
    bin.install "pi"
    mkdir_p "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
    cp "scripts/pi_completion.sh", "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
    system "echo 'if [ -f $(brew --prefix)/etc/bash_completion ]; then . $(brew --prefix)/etc/bash_completion; fi' >> ~/.bashrc"
  end

  def caveats; <<~EOS
    source ~/.bashrc
  EOS
  end

  test do
    system "#{bin}/pi --version"
  end
end
