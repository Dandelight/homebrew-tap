class Coscli < Formula
  desc "Tencent Cloud COS Command-Line Interface"
  homepage "https://github.com/tencentyun/coscli"
  url "https://github.com/tencentyun/coscli/releases/download/v1.0.7/coscli-v1.0.7-darwin-arm64"
  # mirror "https://cosbrowser.cloud.tencent.com/software/coscli/coscli-darwin-arm64"
  version "v1.0.7"
  sha256 "66b910ec6cc9d182c6b6625b3c6c7c9336fff1967198e5ca9b5581e6b6b8c0ac"

  def install
    bin.install "coscli-v1.0.7-darwin-arm64" => "coscli"
    chmod 0755, bin/"coscli"
  end

  test do
    system "#{bin}/coscli", "--version"
  end
end
