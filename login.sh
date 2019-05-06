#! /bin/bash
echo "Login to seu"
login_url=https://w.seu.edu.cn/index.php/index/login
enablemacauth=1

echo "输入的参数个数:$# "
if [ $# == 2 ]
then
    username=$1
    password=$(echo $2| base64 | sed "s/Cg==//g")
    echo "username:$username,passwd:$password"
    curl -H "X-Requested-With:XMLHttpRequest" -X POST --data "enablemacauth=$enablemacauth&password=$password&username=$username" $login_url
else
    echo "usage: ./login.sh username password"
fi
