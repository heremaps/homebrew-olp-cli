class Olp < Formula
  desc "With the Command Line Interface you can access HERE platform services from a command line or with scripts."
  homepage "https://platform.in.here.com/sdk/cli"
  url "https://artifact.api.platform.here.com/v1/references/hrn:here:artifact:::com.here.platform:cli:12.2.5/cli-12.2.5.gz\?apiKey\=84q8N9DRx6YAqyJaXUpr9fhiTnCUIBzvHLpk3QU4Oaw"
  sha256 "846dbf5ffdb2b24cfd864e9ce2dad558b984e7fd469fd7343f8812163c5cc54b"
  version "12.2.5"
  license "Proprietary"

  depends_on "openjdk@8"

  def install
    prefix.install "HERE_NOTICE"
    prefix.install "LICENSE"
    libexec.install "cli_2.12-12.2.5.jar"
    bin.write_jar_script libexec/"cli_2.12-12.2.5.jar", "olp", "-Dfile.encoding=UTF8"
  end

  test do
    system bin/"olp", "version", "--help"
  end

end