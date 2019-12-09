I=1
cat ./source.txt | while read LINE; do
  echo "Downloading $LINE into $I.mp4"
  youtube-dl -o "$I" "$LINE"
  echo ""
  echo "Converting $I.mp4 into $I.mp3"
  ((I++))
  echo ""
  echo ""
done

