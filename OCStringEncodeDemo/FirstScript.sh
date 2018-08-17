#!/usr/bin/env bash

TABLENAME=symbols
CONFUSE_FILE="$PROJECT_DIR/$PROJECT_NAME/Module/"
HEAD_FILE="$PROJECT_DIR/$PROJECT_NAME/DecodeString.h"
STRING_SYMBOL_FILE="$PROJECT_DIR/$PROJECT_NAME/DecodeStringlist.list"
filename="$PROJECT_DIR/$PROJECT_NAME/testFileName.list"
otherfilename="$PROJECT_DIR/$PROJECT_NAME/otherfilename.list"
DecodeStringMethod="$PROJECT_DIR/$PROJECT_NAME/DecodeStringMethod.list"

export LC_CTYPE=C

# 提取字符串 匹配 字母数zi. !@#\/% 不包含中文:
grep -h -r -I  "@\"[0-9A-Za-z. !@#\/%]*\"" $CONFUSE_FILE --include '*.[m]'| sed "s/.*\(@\".*\"\).*/\1/g" | sort | uniq |sed "/^$/d"  >$STRING_SYMBOL_FILE

ramdomString()
{
openssl rand -base64 64 | tr -cd 'a-zA-Z' |head -c 16
}
echo "" >$HEAD_FILE
"" > $DecodeStringMethod


getCString (){
allArray=()
"" >$filename
"" >$otherfilename
echo  $* | tr -d "\n" | od -An -t dC | sed "s/  / /g" >>$filename
#转16进制 异或处理
for line in $(<$filename);
do
echo "obase=16;$[line^0xBB]"|bc >>$otherfilename
done
#读取16进制 加0x
for line in $(<$otherfilename);
do
content="0x$line"
allArray=(${allArray[@]} $content)
done

strrr=''
for i in ${allArray[@]};
do strrr="$strrr,$i"
done
#echo /*$**/>> $HEAD_FILE
randomStr=$ramdom
echo "$randomStr" >> $DecodeStringMethod
echo "/*$**/static char $randomStr[]  = { ${strrr:1:${#strrr}-1} };" >> $HEAD_FILE
}

touch $HEAD_FILE
cat "$STRING_SYMBOL_FILE" | while read  line; do
if [[ ! -z "$line" ]]; then
ramdom=`ramdomString`
getCString ${line:2:${#line}-3}
fi

done

