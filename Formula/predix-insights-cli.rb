class PredixInsightsCli < Formula
  desc "PI is a CLI library for Predix Insights. This top technology lets you concentrate on building analytical pipelines, not managing infrastructure."
  homepage "https://www.predix.io/"
  url "https://github.com/scottmcclary1/predix-insights-cli/releases/download/v1.0.14/predix-insights-cli_1.0.14_macOS_64-bit.tar.gz"
  version "1.0.14"
  sha256 "e52c61a42725fae6ddc6db8cf88904b7c9e465e2351c618d0f62effb665d46de"
  
  depends_on "bash-completion"

  def install
    bin.install "pi"
    mkdir_p HOMEBREW_PREFIX"/etc/bash_completion.d"
    mv prefix"/scripts/pi_completion.sh", HOMEBREW_PREFIX"/etc/bash_completion.d/pi_completion.sh"
    echo "if [ -f #{HOMEBREW_PREFIX} ]; then . #{HOMEBREW_PREFIX}/etc/bash_completion; fi" >> ~/.bashrc
    source ~/.bashrc
  end

  test do
    system "#{bin}/pi --version"
  end
end
