#! /bin/bash
SUC_INFO="result":"1"
echo "输入的参数个数:$# "
if [ $# == 2 ]
then
    username=$1
    password=$2
    echo "username:$username,passwd:$password"
    curl -H "X-Requested-With:XMLHttpRequest" "https://w.seu.edu.cn:801/eportal/?c=Portal&a=login&callback=dr1003&login_method=1&user_account=%2C0%2C$username&user_password=$2&wlan_user_ip=10.192.47.23&wlan_user_ipv6=&wlan_user_mac=000000000000&wlan_ac_ip=&wlan_ac_name=&jsVersion=3.3.2&v=7967"
else
    echo "usage: ./login.sh username password"
fi
