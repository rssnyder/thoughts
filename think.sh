targetdir="${0%/*}"

# add thought
sed -i "3i\\
- $1" "$targetdir/index.md"

# push thought
cd $targetdir

git add index.md
git commit -m "$1"
git push