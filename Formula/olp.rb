class Olp < Formula
  desc "With the Command Line Interface you can access HERE platform services from a command line or with scripts."
  homepage "https://platform.in.here.com/sdk/cli"
  url "https://artifact.api.platform.here.com/v1/references/hrn:here:artifact:::com.here.platform:cli:13.0.1/cli-13.0.1.gz\?apiKey\=84q8N9DRx6YAqyJaXUpr9fhiTnCUIBzvHLpk3QU4Oaw"
  sha256 "7476eb0d12e57fafd92178e2b2dd903e09015e6436d21b2faabb7cd2470848b2"
  version "13.0.1"
  license "Proprietary"

  depends_on "openjdk@17"

  def install
    prefix.install "HERE_NOTICE"
    prefix.install "LICENSE"
    libexec.install "cli_2.12-13.0.1.jar"
    # There are two versions of variables: build time and runtime
    # JAVA_VERSION, ALLOW_DEEP_REFLECTION, 2 and @ needs to be preserved during build time by using $ instead of $
    (bin/"olp").write <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Language::Java.overridable_java_home_env("17")[:JAVA_HOME]}"
      JAVA_VERSION=$(${JAVA_HOME}/bin/java -Xms32M -Xmx32M -version 2>&1 | awk -F '"' '/version/ {print $2}')
      # Check for '1.' entry because starting from JDK 9 version numbering is different (1.8 vs 9.0/10.0/11.0/... )
      if ! [[ "$JAVA_VERSION" =~ ^1"."+ ]]; then
        ALLOW_DEEP_REFLECTION="--add-opens java.base/java.lang=ALL-UNNAMED --add-opens=java.base/sun.security.util=ALL-UNNAMED"
      fi
      exec "${JAVA_HOME}/bin/java" ${ALLOW_DEEP_REFLECTION:-} -Dfile.encoding=UTF8 -jar "#{libexec}/cli_2.12-13.0.1.jar" "$@"
    EOS
  end

  test do
    system bin/"olp", "version", "--help"
  end

end
