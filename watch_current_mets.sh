function get_current_memmory() {
    echo $(free -m | sed -n 2p | awk '{print $3}');
}

function get_current_temperature () {
    echo $(sensors | grep "Package id 0" | awk '{print $4}' | cut -d "+" -f 2  | rev | cut -c4- | rev);
}

while [ 0 ]; do
    echo $(get_current_memmory) >> /tmp/mems
    echo $(get_current_temperature) >> /tmp/temps
    sleep 1;
done

