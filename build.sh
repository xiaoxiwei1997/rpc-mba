RUN_NAME="rpc-mba"
mkdir -p output/bin output/conf # mkdir -m 7777 文件[创建文件的同时设置权限]  mkdir -p /xxx/xxx 递归创建目录
cp script/* output/
cp conf/* output/conf/
chmod +x output/bootstrap.sh
go mod tidy

if [ "$IS_SYSTEM_TEST_ENV" != "1" ]; then
    go build -o output/bin/${RUN_NAME}
else
    go test -c -covermode=set -o output/bin/${RUN_NAME} -coverpkg=./...
fi

