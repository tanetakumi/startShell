

# 引数確認 引数 <メモリ>
if [ $# -ne 1 ];then
    echo "指定された引数は$#個です。" 1>&2
    echo "実行するには1個の引数が必要です。" 1>&2
    exit 1
fi

cd `dirname $0`

SERVER=`find . -maxdepth 1 -name "paper*" -name "*.jar"`

echo $SERVER

java -jar -Xms${1} -Xmx${1} $SERVER nogui
