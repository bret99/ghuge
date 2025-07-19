#!/bin/bash

USERNAME=$1
if [ -z "$USERNAME" ]; then
  echo "Usage: $0 <github-username>"
  exit 1
fi

# Get list of public repos
REPOS=$(curl -s "https://api.github.com/users/$USERNAME/repos"  | jq -r '.[].name')

for REPO in $REPOS; do
  echo "🔍 Checking $REPO..."
  git clone --quiet "https://github.com/$USERNAME/$REPO.git"  &>/dev/null
  if [ -d "$REPO" ]; then
    cd "$REPO"
    EMAILS=$(git log --format='%ae' | sort -u)
    if [ -n "$EMAILS" ]; then
      echo "📧 Emails found in $REPO:"
      echo "$EMAILS"
    fi
    cd ..
    rm -rf "$REPO"
  fi;
 done 
