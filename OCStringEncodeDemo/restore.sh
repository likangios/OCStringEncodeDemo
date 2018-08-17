#!/bin/sh
CONFUSE_FILE="$PROJECT_DIR/$PROJECT_NAME/Module/*"
STRING_SYMBOL_FILE="$PROJECT_DIR/$PROJECT_NAME/DecodeStringlist.list"
DecodeStringMethod="$PROJECT_DIR/$PROJECT_NAME/DecodeStringMethod.list"

exec 3<$STRING_SYMBOL_FILE
exec 4<$DecodeStringMethod

while read line1<&3 && read line2<&4
do
sed -i '' "s:NEDecodeOcString($line2,sizeof($line2)):$line1:g" $CONFUSE_FILE
done
