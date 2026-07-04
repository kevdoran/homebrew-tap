class Pj < Formula
  desc "Manage parallel projects backed by git worktrees"
  homepage "https://github.com/kevdoran/projector"
  url "https://github.com/kevdoran/projector/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2a0b190677b3d39dda93df2309fa5fba5725a2ebadec69d54fa1c033b08209c3"
  license "Apache-2.0"
  head "https://github.com/kevdoran/projector.git", branch: "main"

  depends_on "go" => :build
  depends_on "git"

  def install
    commit = begin
      Utils.git_short_head(length: 7) || "unknown"
    rescue
      "unknown"
    end
    build_date = time.strftime("%Y-%m-%d")
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=#{commit}
      -X main.buildDate=#{build_date}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags.join(" ")), "./cmd/projector"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pj version")
  end
end
