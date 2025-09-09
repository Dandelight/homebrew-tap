class Coscli < Formula
  desc "Tencent Cloud COS Command-Line Interface"
  homepage "https://github.com/tencentyun/coscli"
  url "https://github.com/tencentyun/coscli/releases/download/v1.0.6/coscli-v1.0.6-darwin-arm64"
  # mirror "https://cosbrowser.cloud.tencent.com/software/coscli/coscli-darwin-arm64"
  version "v1.0.6"
  sha256 "9253e043985b51219112400a37b39e618ab5c358cf5777193829aa7b9d9ff5f6"

  def install
    bin.install "coscli-v1.0.6-darwin-arm64" => "coscli"
    chmod 0755, bin/"coscli"
  end

  test do
    system "#{bin}/coscli", "--version"
  end
end
