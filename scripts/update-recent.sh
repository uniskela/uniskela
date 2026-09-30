#!/usr/bin/env bash
# Rewrites the "recently updated" block in README.md.
# Only public, non-fork, non-archived repos are listed (the /users endpoint never returns private repos;
# .private == false is filtered as a second guard).
set -euo pipefail
owner="uniskela"
list=$(gh api "users/${owner}/repos?type=public&sort=pushed&per_page=100" --jq '
  [.[] | select(.private == false and .fork == false and .archived == false and .name != "'"${owner}"'")]
  | .[:5][]
  | "| [**\(.name)**](\(.html_url)) | \(.description // "—") | \(.pushed_at[:10]) |"')
block=$(printf '<!-- RECENT:START -->\n| Repository | Description | Last push |\n| --- | --- | --- |\n%s\n<!-- RECENT:END -->' "$list")
BLOCK="$block" perl -0pi -e 's/<!-- RECENT:START -->.*?<!-- RECENT:END -->/$ENV{BLOCK}/s' README.md
