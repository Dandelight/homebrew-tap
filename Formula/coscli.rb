class Coscli < Formula
  desc "Tencent Cloud COS Command-Line Interface"
  homepage "https://github.com/tencentyun/coscli"
  # url "https://cosbrowser.cloud.tencent.com/software/coscli/coscli-darwin-arm64"
  url "https://github.com/tencentyun/coscli/releases/download/v1.0.3/coscli-v1.0.3-darwin-arm64"
  version "v1.0.3"
  sha256 "327da2360844a1a8375262f1edbfac09121de91e11f6481f960b75cb763eae05"

  def install
    bin.install "coscli-v1.0.3-darwin-arm64" => "coscli"
    chmod 0755, bin/"coscli"
  end

  test do
    system "#{bin}/coscli", "--version"
  end
end
