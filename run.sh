echo "[crawling@home-lite] starting script..."

ulimit -n 65356 # Verify the amount of open files possible is high.
screen -dm bash -c 'python3 main.py'

echo "[crawling@home-lite] script started"

screen -ls

echo "[crawling@home-lite] use `screen -r <ID SHOWN ABOVE>` to view your worker's progress."
