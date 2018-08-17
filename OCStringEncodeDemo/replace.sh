#!/usr/bin/env bash
CONFUSE_FILE="$PROJECT_DIR/$PROJECT_NAME/Module/*"
STRING_SYMBOL_FILE="$PROJECT_DIR/$PROJECT_NAME/DecodeStringlist.list"
DecodeStringMethod="$PROJECT_DIR/$PROJECT_NAME/DecodeStringMethod.list"

export LC_CTYPE=C

exec 3<$STRING_SYMBOL_FILE
exec 4<$DecodeStringMethod
while read line1<&3 && read line2<&4
do
if [[ ! -z "$line1" ]]; then
sed -i '' "s:$line1:NEDecodeOcString($line2,sizeof($line2)):g" $CONFUSE_FILE
fi
done

