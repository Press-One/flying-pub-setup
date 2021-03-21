cd ..
version=${1:-1}
backup_folder_name="flying-pub-setup-backup-$version"
cp -R flying-pub-setup "flying-pub-setup-backup-$version"
echo "Created backup successfully! $pwd/$backup_folder_name"