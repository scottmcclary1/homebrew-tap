class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.17/predix-insights-cli_1.0.17_macOS_64-bit.tar.gz"
  version "1.0.17"
  sha256 "36c9a40021c4d1884604b449c942f07616df0d40386f342d5b86b2c0d63d953b"
  
  depends_on "bash-completion"

  def install
    bin.install "pi"
    mkdir_p "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
    pwd
    cp "scripts/pi_completion.sh", "#{HOMEBREW_PREFIX}/etc/bash_completion.d"
    echo "if [ -f #{HOMEBREW_PREFIX} ]; then . #{HOMEBREW_PREFIX}/etc/bash_completion; fi" >> ~/.bashrc
    source ~/.bashrc
  end

  test do
    system "#{bin}/pi --version"
  end
end
