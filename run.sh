#!/bin/bash
set -x
ROOT=$(cd `dirname $0`; pwd)
# shellcheck disable=SC2164
cd $ROOT

if [ "$BINARY" = "" ];then
    BINARY="bid-api"
fi

if [ "$MODE"x == "test"x ];then
    while [ true ];do
        nohup $ROOT/bin/$BINARY $@ >> log/run.log 2>&1
        sleep 86400000
    done
else
    while [ true ];do
        $ROOT/bin/$BINARY $@ >> log/run.log 2>&1
        /usr/local/bin/sendproxy weixin jiangyong,hexiangjian "$CONFIG_ENV $BINARY 服务崩溃[`date +"%Y-%m-%d %H:%M:%S"`]"
        sleep 5
    done
fi

