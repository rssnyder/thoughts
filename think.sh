cd "${0%/*}"

git pull

sed -i "3i\\
- $1" "$targetdir/index.md"

git add index.md
git commit -m "$1"
git push
