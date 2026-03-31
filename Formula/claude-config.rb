# ABOUTME: Homebrew formula for universal-claude-code-config.
# ABOUTME: Installs global Claude Code configuration files into ~/.claude/.

class ClaudeConfig < Formula
  desc "Global Claude Code configuration — sensible engineering defaults for ~/.claude/"
  homepage "https://github.com/kristianhansen/universal-claude-code-config"
  url "https://github.com/kristianhansen/universal-claude-code-config/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "9b3a3961c264f5750efbd7824fa2843f26fe2cb928da3a1ca738e2bc1d357e8b"
  license "MIT"
  version "1.0.0"

  def install
    prefix.install Dir["*"]
  end

  def post_install
    system "bash", "#{prefix}/install.sh"
  end

  def caveats
    <<~EOS
      Installation complete. Next steps:
        1. Open ~/.claude/CLAUDE.md
        2. Add your name in the Identity & Communication section
        3. Uncomment and fill in your stack under Technology Standards
    EOS
  end
end
