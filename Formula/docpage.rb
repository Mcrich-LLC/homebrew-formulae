class Docpage < Formula
  desc "Generate single-page DocC article JSON from Markdown"
  homepage "https://github.com/Mcrich-LLC/DocPage"
  url "https://github.com/Mcrich-LLC/DocPage/releases/download/0.1.0/docpage"
  sha256 "7fda9eac704174b87c50d81fe55a27aac588ddf0fd808cc57f2f884be4cc389d"

  head "https://github.com/Mcrich-LLC/DocPage.git", branch: "main"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  def install
    bin.install "docpage"
  end

  test do
    assert_match "Generate a single page of documentation", shell_output("#{bin}/docpage --help")
  end
end
