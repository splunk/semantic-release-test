npm install -D @semantic-release/changelog @semantic-release/git @semantic-release/exec
export NEXT_VERSION=$(npx semantic-release --dry-run | grep 'The next release version is' | sed -E 's/.* ([[:digit:].]+)$/\1/')
echo version="$NEXT_VERSION" >> $GITHUB_OUTPUT
