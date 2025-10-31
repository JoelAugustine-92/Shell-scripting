interface="ens33"
op_dir="$HOME/pcap_captures"
timestamp=$(date +%y-%m-%d_%H:%M:%S)
op_file="$op_dir/capture_$timestamp.pcap"
sudo mkdir -p "$op_dir"
echo "The interface is : $interface"
echo "The output will be stored at: $op_dir"

sudo tcpdump -i "$interface" -w "$op_file" -s 0 -G 10 -W 1 -nn
echo "successfull captured"
echo "tcpdump $op_file"
