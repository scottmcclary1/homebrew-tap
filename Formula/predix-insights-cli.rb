class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.15/predix-insights-cli_1.0.15_macOS_64-bit.tar.gz"
  version "1.0.16"
  sha256 "74354e7d8bfa670fdf4040a40f27de0ed4c4b994bdd53e448da8be616fba26ef"
  
  depends_on "bash-completion"

  def install
    bin.install "pi"
    mkdir_p "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
    ls "#{prefix}"
    echo "if [ -f #{HOMEBREW_PREFIX} ]; then . #{HOMEBREW_PREFIX}/etc/bash_completion; fi" >> ~/.bashrc
    source ~/.bashrc
  end

  test do
    system "#{bin}/pi --version"
  end
end
