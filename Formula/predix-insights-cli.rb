class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.16/predix-insights-cli_1.0.16_macOS_64-bit.tar.gz"
  version "1.0.16"
  sha256 "23f3f96f2279f4bcd0b2bf6a1bddbd3129bc798737e245461e6c0019fc4dcb2a"
  
  depends_on "bash-completion"

  def install
    bin.install "pi"
    mkdir_p "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
    ls "#{prefix}"
    ls "#{buildpath}"
    echo "if [ -f #{HOMEBREW_PREFIX} ]; then . #{HOMEBREW_PREFIX}/etc/bash_completion; fi" >> ~/.bashrc
    source ~/.bashrc
  end

  test do
    system "#{bin}/pi --version"
  end
end
