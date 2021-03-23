cd ..
version=${1:-"`date +"%Y-%m-%d"`"}
backup_folder_name="flying-pub-setup-backup$version"
rm -rf $backup_folder_name
cp -R flying-pub-setup $backup_folder_name
echo "Created backup successfully! -----> $(pwd)/$backup_folder_name"