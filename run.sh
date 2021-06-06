echo "[crawling@home-lite] starting script..."
screen -dm bash -c 'python3 crawlfulltest.py'
echo "[crawling@home-lite] script started"
screen -ls
echo "[crawling@home-lite] use `screen -r <ID SHOWN ABOVE>` to view your worker's progress."
