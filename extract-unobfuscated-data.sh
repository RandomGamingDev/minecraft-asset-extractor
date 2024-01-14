if [ -z $1 ]; then
  OUT_DIR="extracted-data"
else
  OUT_DIR=$1
fi

# Unzip to get all the contents
unzip *.jar -d $OUT_DIR

# Remove all of the unnecessary obfuscated code
rm $OUT_DIR/*.class
rm -r $OUT_DIR/com
rm -r $OUT_DIR/net
