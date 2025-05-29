#!/bin/bash
# === Run this script upon new repository creation ===

set -e

# === Check for repo name argument ===
if [ -z "$1" ]; then
  echo "Usage: ./gh-repo-setup.sh <repo-name>"
  exit 1
fi

# === Configuration ===
REPO="$1"
ORG="ryse-rs"
TARGET="$ORG/$REPO"

echo "Setting up repository: $TARGET"
echo

# === Deleting default GitHub labels ===
echo "Deleting default GitHub labels..."
for label in "bug" "documentation" "enhancement" "duplicate" "good first issue" "help wanted" "invalid" "question" "test" "wontfix"; do
  gh label delete "$label" --repo "$TARGET" --yes 2>/dev/null || true
done

# === Creating custom labels ===
echo
echo "Creating custom labels..."

gh label create "A-data"          --repo "$TARGET" --force --color "#1E90FF" --description "api / models / orm / cache"
gh label create "A-domain"        --repo "$TARGET" --force --color "#9E80AE" --description "business logic / core"
gh label create "A-UI"            --repo "$TARGET" --force --color "#BA8E23" --description "UI / UX / design / frontend"
gh label create "A-fullstack"     --repo "$TARGET" --force --color "#FFFFFF" --description "UI + data + domain"
gh label create "A-infra"         --repo "$TARGET" --force --color "#2E8B57" --description "devops / cloud / observability / system architecture"

gh label create "B-blocking"      --repo "$TARGET" --force --color "#F8F1AC" --description "Another issue is pending because of this one"
gh label create "B-clarification" --repo "$TARGET" --force --color "#000000" --description "Should be discussed during next meeting"
gh label create "B-help-wanted"   --repo "$TARGET" --force --color "#2943E2" --description "Extra attention is needed"
gh label create "B-idea"          --repo "$TARGET" --force --color "#D876E3" --description "Discussion; or implementation attempt, to be reviewed before further work"

gh label create "EPIC"            --repo "$TARGET" --force --color "#C5DEF5" --description "Audit or huge issue, encompassing multiple tasks"
gh label create "HOTFIX"          --repo "$TARGET" --force --color "#FF0000" --description "Fix bug in production"

# === Configure merge strategy ===
echo
echo "Configuring merge strategy..."

gh repo edit "$TARGET" \
  --enable-squash-merge=true \
  --enable-merge-commit=false \
  --enable-rebase-merge=false \
  --enable-auto-merge=false \
  --default-branch main \
  --delete-branch-on-merge=true

echo
echo "✅ Setup complete for $TARGET."
