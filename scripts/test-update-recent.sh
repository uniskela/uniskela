#!/usr/bin/env bash
# Run with: bash scripts/test-update-recent.sh (requires jq).
set -euo pipefail
script="$(cd "$(dirname "$0")" && pwd)/update-recent.sh"
scratch=$(mktemp -d)
trap 'rm -rf "$scratch"' EXIT

cat > "$scratch/repos.json" <<'JSON'
[
  {"name":"project","private":false,"fork":false,"archived":false,"stargazers_count":6},
  {"name":"ts6-manager","private":false,"fork":true,"archived":false,"stargazers_count":17},
  {"name":"unrelated-fork","private":false,"fork":true,"archived":false,"stargazers_count":100},
  {"name":"private-project","private":true,"fork":false,"archived":false,"stargazers_count":100},
  {"name":"archived-project","private":false,"fork":false,"archived":true,"stargazers_count":100},
  {"name":"uniskela","private":false,"fork":false,"archived":false,"stargazers_count":100}
]
JSON
jq 'map(. + {html_url: ("https://github.com/uniskela/" + .name), description: "Fixture", pushed_at: "2026-10-06T00:00:00Z", language: "Python"})' \
  "$scratch/repos.json" > "$scratch/api.json"
cat > "$scratch/gh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
[[ "$1" == api && "$3" == --jq ]]
exec jq -r "$4" "$TEST_REPOS"
SH
chmod +x "$scratch/gh"
cat > "$scratch/README.md" <<'MD'
<!-- RECENT:START -->
<!-- RECENT:END -->
<!-- STATS:START -->
<!-- STATS:END -->
Footer stays intact.
MD

cd "$scratch"
PATH="$scratch:$PATH" TEST_REPOS="$scratch/api.json" "$script"
stats=$(sed -n '/<!-- STATS:START -->/,/<!-- STATS:END -->/p' README.md)
[[ "$stats" == *'**23** ⭐ stars'* ]] || { printf 'Unexpected stats: %s\n' "$stats"; exit 1; }
[[ "$stats" == *'**2** public projects'* ]]
[[ "$(tail -n 1 README.md)" == 'Footer stays intact.' ]]
printf '%s\n' 'PASS: maintained fork stars counted; private, archived, and profile repos excluded; footer preserved.'
