# loop over all files with spaces in name in current dir, and replace the spaces with underscores
# https://unix.stackexchange.com/questions/19058/how-to-replace-one-char-with-another-in-all-filenames-of-the-current-directories
for x in *" "*; do
  mv -- "$x" "${x// /_}"
done