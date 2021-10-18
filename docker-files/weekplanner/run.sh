adb kill-server 2> /dev/null
export ADB_SERVER_SOCKET=tcp:$(cat /etc/resolv.conf | grep nameserver | cut -d' ' -f2):5037
fi