command="prog -foo -whatever"
log="prog.log"
message="/message"
match="stopthevpn"

bash /entrypoint.sh > "$log" 2>&1 &
pid=$!

while sleep 1
do
    if fgrep --quiet "$match" "$message"
    then
        kill $pid
        exit 0
    fi
done
