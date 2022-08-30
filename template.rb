class Olp < Formula
  desc "With the Command Line Interface you can access HERE platform services from a command line or with scripts."
  homepage "https://platform.in.here.com/sdk/cli"
  url "https://artifact.api.platform.here.com/v1/references/hrn:here:artifact:::com.here.platform:cli:${OLP_CLI_VERSION}/cli-${OLP_CLI_VERSION}.gz\?apiKey\=${ARTIFACT_SERVICE_API_KEY}"
  sha256 "${SHA256}"
  version "${OLP_CLI_VERSION}"
  license "Proprietary"

  depends_on "openjdk@8"

  def install
    prefix.install "HERE_NOTICE"
    prefix.install "LICENSE"
    libexec.install "cli${SCALA_SUFFIX}-${OLP_CLI_VERSION}.jar"
    bin.write_jar_script libexec/"cli${SCALA_SUFFIX}-${OLP_CLI_VERSION}.jar", "olp", "-Dfile.encoding=UTF8", "8"
  end

  test do
    system bin/"olp", "version", "--help"
  end

end