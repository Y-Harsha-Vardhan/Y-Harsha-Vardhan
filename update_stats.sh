#!/usr/bin/env bash
# Refresh GitHub stats in dark_mode.svg and light_mode.svg.
# Requires: gh (authenticated), python3.
# Usage: ./update_stats.sh

set -euo pipefail
USER="Y-Harsha-Vardhan"
DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Fetching stats for $USER..."

REPOS=$(gh api graphql -f query='{user(login:"'"$USER"'"){repositories(ownerAffiliations:OWNER,isFork:false){totalCount}}}' -q .data.user.repositories.totalCount)
STARS=$(gh api graphql -f query='{user(login:"'"$USER"'"){repositories(ownerAffiliations:OWNER,isFork:false,first:100){nodes{stargazerCount}}}}' -q '[.data.user.repositories.nodes[].stargazerCount] | add')
FOLLOWERS=$(gh api graphql -f query='{user(login:"'"$USER"'"){followers{totalCount}}}' -q .data.user.followers.totalCount)
CONTRIB=$(gh api graphql -f query='{user(login:"'"$USER"'"){repositoriesContributedTo(contributionTypes:[COMMIT,PULL_REQUEST,ISSUE,REPOSITORY]){totalCount}}}' -q .data.user.repositoriesContributedTo.totalCount)

# Commits across all contribution years
YEARS=$(gh api graphql -f query='{user(login:"'"$USER"'"){contributionsCollection{contributionYears}}}' -q '.data.user.contributionsCollection.contributionYears[]')
COMMITS=0
for Y in $YEARS; do
  C=$(gh api graphql -f query='{user(login:"'"$USER"'"){contributionsCollection(from:"'"$Y"'-01-01T00:00:00Z",to:"'"$Y"'-12-31T23:59:59Z"){totalCommitContributions restrictedContributionsCount}}}' -q '.data.user.contributionsCollection | (.totalCommitContributions + .restrictedContributionsCount)')
  COMMITS=$((COMMITS + C))
done

# Uptime = personal age from DOB (edit if needed)
BIRTHDAY="2007-01-03"
AGE=$(python3 -c "
from datetime import date
b = date.fromisoformat('$BIRTHDAY'); n = date.today()
y = n.year - b.year
m = n.month - b.month
d = n.day - b.day
if d < 0: m -= 1; d += 30
if m < 0: y -= 1; m += 12
print(f'{y} y, {m} mo, {d} d')
")

fmt() { printf "%'d" "$1"; }
REPOS_F=$(fmt "$REPOS"); STARS_F=$(fmt "$STARS"); COMMITS_F=$(fmt "$COMMITS")
FOLLOWERS_F=$(fmt "$FOLLOWERS"); CONTRIB_F=$(fmt "$CONTRIB")

echo "  Repos: $REPOS_F | Contrib: $CONTRIB_F | Stars: $STARS_F"
echo "  Commits: $COMMITS_F | Followers: $FOLLOWERS_F | Uptime: $AGE"

update_svg() {
  local f="$1"
  python3 - "$f" "$AGE" "$REPOS_F" "$CONTRIB_F" "$STARS_F" "$COMMITS_F" "$FOLLOWERS_F" <<'PY'
import re, sys
path, age, repos, contrib, stars, commits, followers = sys.argv[1:]
s = open(path).read()
def sub(id_, val):
    global s
    s = re.sub(r'(id="'+id_+r'">)[^<]*', r'\g<1>'+val, s)
sub('age_data', age)
sub('repo_data', repos)
sub('contrib_data', contrib)
sub('star_data', stars)
sub('commit_data', commits)
sub('follower_data', followers)
open(path,'w').write(s)
PY
  echo "  Updated $f"
}

update_svg "$DIR/dark_mode.svg"
update_svg "$DIR/light_mode.svg"
echo "Done. Review 'git diff' before committing."
