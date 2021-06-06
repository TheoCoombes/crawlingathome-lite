# Crawling@Home Lite Setup Script

apt update
yes | apt upgrade

ulimit -n 65356

fallocate -l 5G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
cp /etc/fstab /etc/fstab.bak
'/swapfile none swap sw 0 0' | tee -a /etc/fstab
# sudo sysctl vm.swappiness=75
# echo 'vm.swappiness=75' | sudo tee -a /etc/sysctl.conf

yes | apt install python3-pip
yes | apt install vim
yes | apt-get install git

git clone "https://github.com/TheoCoombes/crawlingathome"
pip install -r crawlingathome/requirements.txt

pip install grequests cairosvg spacy-langdetect langid tensorflow tfr_image pandas pillow numpy

pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

pip install git+https://github.com/openai/CLIP.git
